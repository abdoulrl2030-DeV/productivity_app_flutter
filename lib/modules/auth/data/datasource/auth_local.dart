import '../../../../lib/core/services/local_storage.dart';
import '../../domain/entities/user_entity.dart';

class AuthLocalDataSource {
  final LocalStorageService storage = LocalStorageService();

  Future<void> cacheUser(UserEntity user) async {
    await storage.write('user', {'id': user.id, 'name': user.name, 'email': user.email});
  }
}
