import 'package:hepa/presentation/extensions/build_context_extension.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/user_data/user_data_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:intl/intl.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController workController = TextEditingController();

  final RadioGroupController genderController = RadioGroupController();

  @override
  void initState() {
    dateOfBirthController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(userDataProvider, ((previous, next) {
      if (next is AsyncData && next.value != null) {
        ref.read(routerProvider).goNamed('main');
      } else if (next is AsyncError) {
        context.showSnackBar(next.error.toString());
      }
    }));

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(100),
                Center(
                  child: Text(
                    'Mendaftar Akun',
                    style:
                        primaryFont.copyWith(fontSize: 28, fontWeight: medium),
                  ),
                ),
                verticalSpace(50),
                HepaTextField(
                  controller: nameController,
                  hintText: 'Nama Lengkap',
                  suffixIcon: Icon(Icons.person),
                ),
                verticalSpace(20),
                HepaTextField(
                  controller: emailController,
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                ),
                verticalSpace(20),
                HepaTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.key),
                ),
                verticalSpace(20),
                HepaTextField(
                  controller: retypePasswordController,
                  hintText: 'Konfirmasi Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.key),
                ),
                verticalSpace(20),
                Text(
                  'Jenis Kelamin',
                  style: TextStyle(fontSize: 16, fontWeight: regular),
                ),
                verticalSpace(8),
                RadioGroup(
                  controller: genderController,
                  values: ['Laki-laki', 'Perempuan'],
                  orientation: RadioGroupOrientation.horizontal,
                  decoration: RadioGroupDecoration(
                    spacing: 10,
                    activeColor: primaryColor,
                  ),
                ),
                verticalSpace(20),
                HepaTextField(
                  readOnly: true,
                  controller: dateOfBirthController,
                  hintText: 'Tanggal Lahir',
                  suffixIcon: Icon(Icons.calendar_month),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(
                            1945), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      debugPrint(pickedDate
                          .toIso8601String()); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      debugPrint(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateOfBirthController.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      debugPrint("Date is not selected");
                    }
                  },
                ),
                verticalSpace(20),
                HepaTextField(
                  controller: workController,
                  hintText: 'Pekerjaan',
                  suffixIcon: Icon(Icons.work),
                ),
                verticalSpace(50),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: regular,
                          color: blackColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ref.read(routerProvider).pushNamed('login');
                        },
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
                switch (ref.read(userDataProvider)) {
                  AsyncData(:final value) => value == null
                      ? SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              ref.read(userDataProvider.notifier).register(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    name: nameController.text,
                                    retypedPassword:
                                        retypePasswordController.text,
                                    work: workController.text,
                                    dateOfBirth: dateOfBirthController.text,
                                    gender: genderController.value.toString(),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blackColor,
                              foregroundColor: backgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: medium,
                                  color: ghostWhite),
                            ),
                          ),
                        )
                      : SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              ref.read(userDataProvider.notifier).register(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    name: nameController.text,
                                    retypedPassword:
                                        retypePasswordController.text,
                                    work: workController.text,
                                    dateOfBirth: dateOfBirthController.text,
                                    gender: genderController.value.toString(),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blackColor,
                              foregroundColor: backgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: medium,
                                  color: ghostWhite),
                            ),
                          ),
                        ),
                  _ => SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(userDataProvider.notifier).register(
                                email: emailController.text,
                                password: passwordController.text,
                                name: nameController.text,
                                retypedPassword: retypePasswordController.text,
                                work: workController.text,
                                dateOfBirth: dateOfBirthController.text,
                                gender: genderController.value.toString(),
                              );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blackColor,
                          foregroundColor: backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: medium,
                              color: ghostWhite),
                        ),
                      ),
                    ),
                },
                verticalSpace(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
