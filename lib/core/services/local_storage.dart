class LocalStorageService {
  final Map<String, dynamic> _store = {};

  Future<void> write(String key, dynamic value) async {
    _store[key] = value;
  }

  Future<dynamic> read(String key) async => _store[key];
}
