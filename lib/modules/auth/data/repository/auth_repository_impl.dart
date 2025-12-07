import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/user_entity.dart';
import '../datasource/auth_remote.dart';
import '../datasource/auth_local.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote = AuthRemoteDataSource();
  final AuthLocalDataSource local = AuthLocalDataSource();

  @override
  Future<UserEntity> login(String email, String password) async {
    final user = await remote.login(email, password);
    await local.cacheUser(user);
    return user;
  }
}
