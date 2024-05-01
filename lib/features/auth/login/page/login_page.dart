import 'package:flutter/material.dart';
import 'package:hepa/data/api/authentication_api.dart';
import 'package:hepa/shared/hepa_elevatedbutton.dart';
import 'package:hepa/shared/hepa_textfield.dart';
import 'package:hepa/utils/constans.dart';
import 'package:hepa/utils/methods.dart';

import 'package:refreshed/refreshed.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  handleLogin() async {
    if (formKey.currentState!.validate()) {
      bool result = await AuthenticationApi.login(
          emailController.text, passwordController.text);
      if (result) {
        Get.snackbar(
          'Login Berhasil',
          'Selamat datang di Health Planner',
        );
        Get.offAllNamed('/home');
      } else {
        Get.snackbar('Login Gagal', 'Email atau password salah!');
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
                verticalSpace(150),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Selamat Datang',
                        style: primaryFont.copyWith(
                          fontSize: 28,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Mulailah hidup sehatmu sekarang',
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(50),
                Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        // Email Text Field
                        HepaTextField(
                          validator: (value) =>
                              value == '' ? 'Email tidak boleh kosong' : null,
                          autofillHints: const [AutofillHints.email],
                          controller: emailController,
                          hintText: 'Email',
                          suffixIcon: const Icon(Icons.email),
                        ),
                        verticalSpace(20),
                        HepaTextField(
                          validator: (value) => value == ''
                              ? 'Password tidak boleh kosong'
                              : null,
                          autofillHints: const [AutofillHints.password],
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true,
                          suffixIcon: const Icon(Icons.key),
                        ),
                        verticalSpace(200),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Belum Punya Akun? ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: regular,
                                  color: blackColor,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.toNamed('/register'),
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
                        HepaElevatedButton(
                          text: 'Login',
                          onPressed: () => handleLogin(),
                        ),
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
