import 'package:universal_html/html.dart' as html;

class CookieManager {
  static addToCookie(String key, bool value) {
    html.document.cookie = "$key=$value";
  }

  static logOutUser(String key,bool value) {
    html.document.cookie = "$key=$value";
  }

  static bool getCookie(String key) {
    bool isUserLogin = false;
    String cookie = html.document.cookie!;
    if (cookie.isEmpty) return false;
    List<String> isLoginCookieStringList = cookie.split("=");
    if (isLoginCookieStringList.last == "true") isUserLogin = true;
    return isUserLogin;
  }
}
