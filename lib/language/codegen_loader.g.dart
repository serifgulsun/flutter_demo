// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "giris": "Sign in",
  "kayit": "Sign up",
  "kullaniciAdi": "User Name",
  "sifre": "Password",
  "sifreOnayla": "Confirm Password",
  "sifremiUnuttum": "Forgot Password",
  "hesap": "does not have account?",
  "sayfalar": "Pages",
  "kullanicilar": "Users",
  "detaylar": "Details",
  "mesajlar": "Messages",
  "ayarlar": "Settings",
  "hakkimizda": "About us",
  "profil": "Profile",
  "cikis": "log out"
};
static const Map<String,dynamic> tr = {
  "giris": "Oturum Aç",
  "kayit": "Hesap Oluştur",
  "kullaniciAdi": "Kullanıcı Adı",
  "sifre": "Şifre",
  "sifreOnayla": "Şifre Onayla",
  "sifremiUnuttum": "Şifremi Unuttum",
  "hesap": "Hesabınız yok mu?",
  "sayfalar": "Sayfalar",
  "kullanicilar": "Kullanıcılar",
  "detaylar": "Detaylar",
  "mesajlar": "Mesajlar",
  "ayarlar": "Ayarlar",
  "hakkimizda": "Hakkımızda",
  "profil": "Profil",
  "cikis": "Çıkış"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "tr": tr};
}
