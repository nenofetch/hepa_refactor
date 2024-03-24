import 'package:flutter/foundation.dart';
import 'package:hepa/data/misc/constants.dart';
import 'package:hepa/data/repositories/user_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

class HepaUserRepository implements UserRepository {
  @override
  Future<Result<User>> getUser({required String token}) async {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userToken = prefs.getString('token');
    debugPrint('User $userToken');

    if (userToken != null) {
      var result = await dio.get(
        '$baseUrl/profile',
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
  Future<Result<User>> updateUser() {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
