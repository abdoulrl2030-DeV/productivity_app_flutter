import 'package:flutter/material.dart';
import '../../../auth/domain/usecases/login.dart';
import '../../data/models/user_model.dart';

class AuthController extends ChangeNotifier {
  bool loading = false;
  UserModel? user;

  final LoginUseCase _login = LoginUseCase();

  Future<bool> login(String email, String password) async {
    loading = true;
    notifyListeners();
    try {
      final res = await _login.call(email, password);
      user = UserModel(id: res.id, name: res.name, email: res.email);
      return true;
    } catch (_) {
      return false;
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
