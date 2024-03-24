import 'package:hepa/data/misc/constants.dart';
import 'package:hepa/data/repositories/authentication.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HepaAuthentication implements Authentication {
  @override
  Future? getLoggedInUser() async {
    try {
      Dio dio = Dio();
      dio.interceptors.add(PrettyDioLogger(
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');

      if (token != null) {
        final responses = await dio.post(
          '$baseUrl/profile',
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        if (responses.statusCode == 200) {
          return responses.data['data'];
        }
      } else {
        return null;
      }
    } catch (e) {
      return Result.failed('$e.message');
    }
  }

  @override
  Future<Result<String>> login(
      {required String email, required String password}) async {
    try {
      Dio dio = Dio();
      dio.interceptors.add(PrettyDioLogger(
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
      final response = await dio.post('$baseUrl/login', data: {
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
      return Result.failed(e.response?.data['message'] ?? 'Proses Login Gagal');
    }
  }

  @override
  Future<Result<void>> logout() async {
    Dio dio = Dio()
      ..interceptors.add(PrettyDioLogger(
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));

    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');

      final responses = await dio.post(
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
    } catch (e) {
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
      // TODO: implement register
      Dio dio = Dio();
      dio.interceptors.add(PrettyDioLogger(
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
      final response = await dio.post('$baseUrl/register', data: {
        'email': email,
        'password': password,
        'retype_password': retypePassword,
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
      return Result.failed(e.response?.data['message'] ?? 'Failed to login');
    }
  }
}
