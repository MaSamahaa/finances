import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:finance_app/models/user_model.dart';
import 'package:finance_app/services/auth_service.dart';
import 'package:flutter/material.dart';

class MockAuthService implements AuthService {
  @override
  Future singnIn() {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> singnUp(
      {required String email, required String password, String? name}) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      if (password.startsWith('123')) {
        throw Exception();
      }
      return UserModel(id: email.hashCode, name: name, email: email);
    } catch (e) {
      if (password.startsWith('123')) {
        throw ('Senha insegura. Digite uma senha segura.');
      }
      throw ('Não foi possível criar sua conta neste momento.');
    }
  }
}
