import 'package:finance_app/models/user_model.dart';

abstract class AuthService {
  Future<UserModel> singnUp(
      {required String email, required String password, String? name});

  Future singnIn();
}
