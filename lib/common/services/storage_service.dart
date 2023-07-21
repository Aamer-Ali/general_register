import 'package:general_register/common/values/constatns.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  final SharedPreferences sharedPreferences;

  StorageService({required this.sharedPreferences});

  Future<bool> setBool(String key, bool value) async {
    return await sharedPreferences.setBool(key, value);
  }

  Future<bool>  setString(String key, String value) async {
    return await sharedPreferences.setString(key, value);
  }

  Future<bool> removeKey(String key) async {
    return await sharedPreferences.remove(key);
  }

  // bool getIsShowOnBoardingScreen() {
  //   return _preferences.getBool(AppConstants.SHOW_ON_BOARDING_SCREEN) ?? true;
  // }

  bool getIsUserLoggedIn() {
    return sharedPreferences.getBool(AppConstants.IS_USER_LOGIN_KEY) == null ? false : true;
  }
}
