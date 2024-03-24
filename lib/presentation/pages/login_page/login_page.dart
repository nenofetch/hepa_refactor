import 'package:flutter/material.dart';
import 'package:hepa/data/api/hepa_authentication.dart';
import 'package:hepa/data/api/hepa_user_repository.dart';

import 'package:hepa/domain/usecases/login/login.dart';
import 'package:hepa/presentation/pages/main_page/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Login login = Login(
              authentication: HepaAuthentication(),
              userRepository: HepaUserRepository(),
            );

            login(
              LoginParams(email: 'user@gmail.com', password: '1234567890'),
            ).then(
              (result) {
                if (result.isSuccess) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MainPage(
                        user: result.resultValue!,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(result.errorMessage!),
                    ),
                  );
                }
              },
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
