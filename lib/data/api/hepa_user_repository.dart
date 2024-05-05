import 'package:flutter/foundation.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/user_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

class HepaUserRepository implements UserRepository {
  final Dio? _dio;

  HepaUserRepository({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));
  @override
  Future<Result<User>> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userToken = prefs.getString('token');
    debugPrint('User $userToken');

    if (userToken != null) {
      var result = await _dio!.get(
        ApiUrl.profile,
        options: Options(
          headers: {
            'Authorization': 'Bearer $userToken',
          },
        ),
      );

      if (result.statusCode == 200) {
        return Result.success(User.fromJson(result.data!['data']['profile']));
      } else {
        return Result.failed('Failed to get user');
      }
    } else {
      return Result.failed('Token not found');
    }
  }

  @override
  Future<Result<User>> updateUser(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation,
      required String gender,
      required String dateOfBirth,
      required String work}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');

      final responses = await _dio!.put(
        ApiUrl.profile,
        queryParameters: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': passwordConfirmation,
          'date_of_birth': dateOfBirth,
          'work': work,
          'gender': gender
        },
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      if (responses.statusCode == 200) {
        return Result.success(User.fromJson(responses.data['data']['profile']));
      } else {
        return Result.failed('Failed to update user');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
