import 'package:hepa/presentation/extensions/build_context_extension.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/user_data/user_data_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(userDataProvider, (previous, next) {
      if (next is AsyncData) {
        if (next.value != null) {
          ref.read(routerProvider).goNamed('main');
        }
      } else if (next is AsyncError) {
        context.showSnackBar(next.error.toString());
      }
    });

    return Scaffold(
      body: ListView(
        children: [
          verticalSpace(150),
          Center(
            child: Column(
              children: [
                Text(
                  'Selamat Datang',
                  style: primaryFont.copyWith(fontSize: 28, fontWeight: medium),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                // Email Text Field
                HepaTextField(
                  autofillHints: [AutofillHints.email],
                  controller: emailController,
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                ),
                verticalSpace(20),
                HepaTextField(
                  autofillHints: [AutofillHints.password],
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.key),
                ),
                verticalSpace(200),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum Punya Akun? ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: regular,
                          color: blackColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ref.read(routerProvider).pushNamed('register');
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
                switch (ref.watch(userDataProvider)) {
                  AsyncData(:final value) => value == null
                      ? SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              ref.read(userDataProvider.notifier).login(
                                  email: emailController.text,
                                  password: passwordController.text);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blackColor,
                              foregroundColor: backgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: medium,
                                color: ghostWhite,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              ref.read(userDataProvider.notifier).login(
                                  email: emailController.text,
                                  password: passwordController.text);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blackColor,
                              foregroundColor: backgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: medium,
                                color: ghostWhite,
                              ),
                            ),
                          ),
                        ),
                  _ => SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(userDataProvider.notifier).login(
                              email: emailController.text,
                              password: passwordController.text);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blackColor,
                          foregroundColor: backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: medium,
                            color: ghostWhite,
                          ),
                        ),
                      ),
                    )
                }
              ],
            ),
          ),
        ],
      ),
    );
  }
}
