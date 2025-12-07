import 'dart:async';

import '../../domain/entities/user_entity.dart';

class AuthRemoteDataSource {
  Future<UserEntity> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 400));
    return UserEntity(id: '1', name: 'Demo User', email: email);
  }
}
