import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/user.dart';

class MainPage extends StatelessWidget {
  final User user;
  const MainPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(user.toString()),
      ),
    );
  }
}
