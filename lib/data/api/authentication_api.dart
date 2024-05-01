import 'package:hepa/domain/models/user.dart';
import 'package:hepa/utils/api_request.dart';
import 'package:hepa/utils/api_uri.dart';
import 'package:hepa/utils/sessions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationApi {
  static Future<bool> login(String email, String password) async {
    String url = ApiUri.login;
    Map? responseBody = await ApiRequest.posts(url, {
      'email': email,
      'password': password,
    });
    if (responseBody == null) return false;

    if (responseBody['meta']['code'] == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = responseBody['data']['token'];
      prefs.setString('token', token);
      var mapUser = responseBody['data']['user'];
      Sessions.saveUser(User.fromJson(mapUser));
      return true;
    }

    return false;
  }

  static Future<bool> register(
    String name,
    String email,
    String password,
    String retypePassword,
    String gender,
    String dateOfBirth,
    String work,
  ) async {
    String url = ApiUri.register;
    Map? responseBody = await ApiRequest.posts(url, {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': retypePassword,
      'work': work,
      'date_of_birth': dateOfBirth,
      'gender': gender,
    });
    if (responseBody == null) return false;

    if (responseBody['meta']['code'] == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = responseBody['data']['token'];
      prefs.setString('token', token);

      var mapUser = responseBody['data'];
      Sessions.saveUser(User.fromJson(mapUser));
      return true;
    }

    return false;
  }
}
