import 'dart:convert';

class SimpleEncryption {
  static String encode(String input) => base64Encode(utf8.encode(input));
  static String decode(String input) => utf8.decode(base64Decode(input));
}
