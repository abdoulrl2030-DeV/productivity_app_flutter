class SecureStorageService {
  final Map<String, String> _secure = {};

  Future<void> write(String key, String value) async {
    _secure[key] = value;
  }

  Future<String?> read(String key) async => _secure[key];
}
