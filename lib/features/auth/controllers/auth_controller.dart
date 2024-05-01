import 'package:hepa/domain/models/user.dart';
import 'package:refreshed/refreshed.dart';

class AuthController extends GetxController {
  final _data = const User().obs;
  User get data => _data.value;
  setData(n) => _data.value = n;
}
