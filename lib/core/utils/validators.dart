class Validators {
  static bool isEmail(String? v) {
    if (v == null) return false;
    final reg = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}");
    return reg.hasMatch(v);
  }
}
