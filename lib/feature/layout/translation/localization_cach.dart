import 'package:fut/core/storage.dart';

class LanguageCacheHelper {
  Future<void> cacheLanguageCode(String languageCode) async {
    LocalStorage.pre.setString("LOCALE", languageCode);
  }

  Future<String> getCachedLanguageCode() async {
    final cachedLanguageCode = LocalStorage.pre.getString("LOCALE");
    if (cachedLanguageCode != null) {
      return cachedLanguageCode;
    } else {
      return "en";
    }
  }
}
