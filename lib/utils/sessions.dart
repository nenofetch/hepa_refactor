import 'dart:convert';

import 'package:hepa/domain/models/user.dart';
import 'package:hepa/features/auth/controllers/auth_controller.dart';
import 'package:refreshed/refreshed.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sessions {
  static Future<bool> saveUser(User user) async {
    final pref = await SharedPreferences.getInstance();
    Map<String, dynamic> mapUser = user.toJson();
    print('saveUser $mapUser');
    String stringUser = jsonEncode(mapUser);
    bool result = await pref.setString('user', stringUser);

    if (result) {
      final cUser = Get.put(AuthController());
      cUser.setData(user);
    }

    return result;
  }

  static Future<User> getUser() async {
    User user = const User();
    final pref = await SharedPreferences.getInstance();
    String? stringUser = pref.getString('user');
    if (stringUser != null) {
      Map<String, dynamic> mapUser = jsonDecode(stringUser);
      user = User.fromJson(mapUser);
      print('get user : $user');
    }
    final cUser = Get.put(AuthController());
    cUser.setData(user);
    return user;
  }

  static Future<bool> deleteUser() async {
    final pref = await SharedPreferences.getInstance();
    bool result = await pref.remove('user');
    final cUser = Get.put(AuthController());
    cUser.setData(const User());
    return result;
  }
}
