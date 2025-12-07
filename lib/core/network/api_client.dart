class ApiClient {
  Future<Map<String, dynamic>> post(String path, Map<String, dynamic> body) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return {'status': 'ok', 'data': body};
  }
}
