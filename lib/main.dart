
import 'package:demo/login/login.dart';
import 'package:demo/login/register.dart';
import 'package:demo/pages/appbarpages.dart';
import 'package:demo/pages/carousel.dart';
import 'package:demo/pages/collapsingtoolbar.dart';
import 'package:demo/pages/convexbar.dart';
import 'package:demo/pages/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'language/codegen_loader.g.dart';
/*
main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => LoginPages(),
      "/login": (context) => LoginPages(),
      "/register": (context) => RegisterPages(),
    },
  ));
} */

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: 'assest/language',
    supportedLocales: [
      Locale('tr'),
      Locale('en'),
    ],
    fallbackLocale: Locale('tr'),
    assetLoader: CodegenLoader(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPages(),
        "/login": (context) => LoginPages(),
        "/register": (context) => RegisterPages(),
        "/homepages": (context) => HomePages(),
        "/appbarpages": (context) => AppBarPages(),
        "/convexbarpages": (context) => ConvexBarPages(),
        "/collapsingtoolbarpages": (context) => CollapsingToolbarPages(),
        "/carouselpages": (context) => CarouselPages(),
      },
    );
  }
}
