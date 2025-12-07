import '../..//data/repository/auth_repository_impl.dart';

class LoginUseCase {
  final AuthRepositoryImpl _repo = AuthRepositoryImpl();

  Future call(String email, String password) async {
    return _repo.login(email, password);
  }
}
