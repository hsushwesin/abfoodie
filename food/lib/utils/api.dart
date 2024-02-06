import 'dart:convert';

class Api {
  static Future<bool> getAllCats() async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  static Future<bool> getAllSubs() async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  static Future<bool> getAllTags() async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  static Future<bool> userRegister(String name, String email, String phone, String password) async {
    var userData = {
      "name": name,
      "eamil": email,
      "phone": phone,
      "password": password
    };
    var encodedData = jsonEncode(userData);
    print(encodedData);
    return true;
  }

  static Future<bool> userLogin(String phone, String password) async {
    var userData = {
      "phone": phone,
      "password": password
    };
    var encodedData = jsonEncode(userData);
    print(encodedData);
    return true;
  }
}
