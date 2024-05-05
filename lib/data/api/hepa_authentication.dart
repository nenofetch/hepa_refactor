import 'package:hepa/data/utils/constants.dart';
import 'package:hepa/data/repositories/authentication.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:dio/dio.dart';
import 'package:hepa/domain/entities/user.dart';
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
  Future<Result<User>> getLoggedInUser() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');

      if (token != null) {
        final responses = await _dio!.get(
          '$baseUrl/profile',
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        return Result.success(
            User.fromJson(responses.data!['data']['profile']));
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
      final response = await _dio!.post('$baseUrl/login', data: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
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
        '$baseUrl/logout',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      if (responses.statusCode == 200) {
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
      final response = await _dio!.post('$baseUrl/register', data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': retypePassword,
        'work': work,
        'date_of_birth': dateOfBirth,
        'gender': gender,
      });
      if (response.statusCode == 200) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
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
