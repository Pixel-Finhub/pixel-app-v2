import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getToken() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("token");
}

Future<int?> getUserId() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getInt("userId");
}

Future<String?> getUserName() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("userName");
}

Future<String?> getFirstName() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("firstName");
}

Future<String?> getLastName() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("firstName");
}

Future<String?> getPhone() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("phone");
}

Future<String?> getEmail() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("email");
}

Future<String?> getOTPEmail() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("OTPEmail");
}