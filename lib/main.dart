import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hepa/domain/models/user.dart';

import 'package:hepa/utils/sessions.dart';
import 'package:hepa/features/auth/login/page/login_page.dart';
import 'package:hepa/features/home/page/home_page.dart';
import 'package:hepa/routes/routes.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:refreshed/refreshed.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  requestNotification();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      home: FutureBuilder(
        future: Sessions.getUser(),
        builder: (context, AsyncSnapshot<User> snapshot) {
          if (snapshot.data != null && snapshot.data!.id != null) {
            return const HomePage();
          }
          return const LoginPage();
        },
      ),
    ),
  );
}

void requestNotification() async {
  var status = await Permission.notification.status;

  if (status.isGranted) {
    debugPrint('granted');
  } else if (status.isDenied) {
    if (await Permission.notification.request().isGranted) {
      debugPrint(status.name);
    }
  }
}
