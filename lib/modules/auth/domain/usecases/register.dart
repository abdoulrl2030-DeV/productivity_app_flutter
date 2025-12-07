// register placeholder
class RegisterUseCase {
  Future<void> call(String name, String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
  }
}
