import 'package:flutter/material.dart';
import 'package:hepa/data/api/authentication_api.dart';
import 'package:hepa/features/home/page/home_page.dart';
import 'package:hepa/shared/hepa_elevatedbutton.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:intl/intl.dart';
import 'package:hepa/features/auth/register/controllers/register_controller.dart';
import 'package:hepa/shared/hepa_textfield.dart';
import 'package:hepa/utils/constans.dart';
import 'package:hepa/utils/methods.dart';
import 'package:refreshed/refreshed.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController workController = TextEditingController();

  final RadioGroupController genderController = RadioGroupController();
  final formKey = GlobalKey<FormState>();
  final birthDayController = Get.put(RegisterController());

  void pickDate(BuildContext context) async {
    var selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (selectedDate != null) {
      birthDayController.selectedDate = selectedDate.obs;
      dateOfBirthController.text =
          DateFormat('yyyy-MM-dd').format(selectedDate).toString();
    }
  }

  handleRegister() async {
    if (formKey.currentState!.validate()) {
      bool result = await AuthenticationApi.register(
        nameController.text,
        emailController.text,
        passwordController.text,
        retypePasswordController.text,
        dateOfBirthController.text,
        workController.text,
        genderController.value.toString(),
      );

      if (result) {
        Get.snackbar('Register Sukses', 'berhasil register!');
        Get.off(() => const HomePage());
      } else {
        Get.snackbar('Register Gagal', 'Akun sudah terdaftar!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(100),
                        Center(
                          child: Text(
                            'Mendaftar Akun',
                            style: primaryFont.copyWith(
                                fontSize: 28, fontWeight: medium),
                          ),
                        ),
                        verticalSpace(50),
                        HepaTextField(
                          validator: (value) => value == ''
                              ? 'Nama Lengkap tidak boleh kosong!'
                              : null,
                          controller: nameController,
                          hintText: 'Nama Lengkap',
                          suffixIcon: const Icon(Icons.person),
                        ),
                        verticalSpace(20),
                        HepaTextField(
                          validator: (value) =>
                              value == '' ? 'Email tidak boleh kosong!' : null,
                          controller: emailController,
                          hintText: 'Email',
                          suffixIcon: const Icon(Icons.email),
                        ),
                        verticalSpace(20),
                        HepaTextField(
                          validator: (value) => value == ''
                              ? 'Password tidak boleh kosong!'
                              : null,
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true,
                          suffixIcon: const Icon(Icons.key),
                        ),
                        verticalSpace(20),
                        HepaTextField(
                          validator: (value) {
                            if (value == '') {
                              return 'Konfirmasi Password tidak boleh kosong!';
                            } else if (value != passwordController.text) {
                              return 'Password tidak sama';
                            }
                            return null;
                          },
                          controller: retypePasswordController,
                          hintText: 'Konfirmasi Password',
                          obscureText: true,
                          suffixIcon: const Icon(Icons.key),
                        ),
                        verticalSpace(20),
                        const Text(
                          'Jenis Kelamin',
                          style: TextStyle(fontSize: 16, fontWeight: regular),
                        ),
                        verticalSpace(8),
                        RadioGroup(
                          controller: genderController,
                          values: const ['Laki-laki', 'Perempuan'],
                          orientation: RadioGroupOrientation.horizontal,
                          decoration: const RadioGroupDecoration(
                            spacing: 10,
                            activeColor: primaryColor,
                          ),
                        ),
                        verticalSpace(20),
                        HepaTextField(
                          readOnly: true,
                          validator: (value) => value == ''
                              ? 'Tanggal Lahir tidak boleh kosong!'
                              : null,
                          controller: dateOfBirthController,
                          hintText: 'Tanggal Lahir',
                          suffixIcon: const Icon(Icons.calendar_month),
                          onTap: () => pickDate(context),
                        ),
                        verticalSpace(20),
                        HepaTextField(
                          controller: workController,
                          hintText: 'Pekerjaan',
                          suffixIcon: const Icon(Icons.work),
                        ),
                        verticalSpace(20),
                        HepaElevatedButton(
                          text: 'Register',
                          onPressed: () => handleRegister(),
                        ),
                        verticalSpace(50),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Sudah punya akun? ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: regular,
                                  color: blackColor,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.back(),
                                child: Text(
                                  'Klik disini',
                                  style: TextStyle(
                                    color: Colors.blue.withOpacity(0.5),
                                    fontSize: 16,
                                    fontWeight: bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        verticalSpace(20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
