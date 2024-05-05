import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/authentication.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaAuthentication implements Authentication {
  final Dio? _dio;

  HepaAuthentication({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));
  @override
  Future<Result<String>> getLoggedInUser() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var email = prefs.getString('email');
      var password = prefs.getString('password');

      if (email != null && password != null) {
        final responses = await _dio!.post(ApiUrl.login, data: {
          'email': email,
          'password': password,
        });
        if (responses.data['meta']['code'] == 200) {
          var token = responses.data['data']['token'];
          prefs.setString('token', token);
          final userId = responses.data['data'].toString();

          return Result.success(userId);
        } else {
          return Result.failed('Failed');
        }
      } else {
        return Result.failed('Stoppp');
      }
    } on DioException catch (e) {
      return Result.failed('${e.response!.data['data'] ?? 'Login Gagal'}');
    }
  }

  @override
  Future<Result<String>> login(
      {required String email, required String password}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final response = await _dio!.post(ApiUrl.login, data: {
        'email': email,
        'password': password,
      });

      prefs.setString('email', email);
      prefs.setString('password', password);
      if (response.data['meta']['code'] == 200) {
        var token = response.data['data']['token'];
        prefs.setString('token', token);
        final userId = response.data['data'].toString();

        return Result.success(userId);
      } else {
        return Result.failed('Failed');
      }

      // return Result.success(response.data['token']);
    } on DioException catch (e) {
      // return Result.failed(e.response?.data['message'] ?? 'Proses Login Gagal');
      return Result.failed('${e.response!.data['data'] ?? 'Login Gagal'}');
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');

      final responses = await _dio!.post(
        ApiUrl.logout,
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      prefs.remove('token');
      prefs.remove('email');
      prefs.remove('password');
      if (responses.data['meta']['code'] == 200) {
        return Result.success(null);
      } else {
        return Result.failed('Failed');
      }
    } on DioException catch (e) {
      return Result.failed('$e.message');
    }
  }

  @override
  Future<Result<String>> register(
      {required String name,
      required String email,
      required String password,
      required String retypePassword,
      required String gender,
      required String dateOfBirth,
      required String work}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      prefs.setString('password', password);
      final response = await _dio!.post(ApiUrl.register, data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': retypePassword,
        'work': work,
        'date_of_birth': dateOfBirth,
        'gender': gender,
      });
      if (response.data['meta']['code'] == 200) {
        var token = response.data['data']['token'];
        prefs.setString('token', token);
        final userId = response.data['data'].toString();

        return Result.success(userId);
      } else {
        return Result.failed('Failed');
      }

      // return Result.success(response.data['token']);
    } on DioException catch (e) {
      return Result.failed(e.response?.data['message'] ?? 'Gagal mendaftar');
    }
  }
}
