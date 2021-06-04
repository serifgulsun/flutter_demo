import 'package:demo/language/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterPagesState();
}

class RegisterPagesState extends State<RegisterPages> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: Text('Login Screen App'), ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(LocaleKeys.kayit.tr(),
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: LocaleKeys.kullaniciAdi.tr(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: LocaleKeys.sifre.tr(),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: LocaleKeys.sifreOnayla.tr(),
                    ),
                  ),
                ),
                /* TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: Text(LocaleKeys.sifremiUnuttum.tr()),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ), */
                Container(
                  height: 70,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, "/register");
                     // Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: Text(
                      LocaleKeys.kayit.tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                   // Text(LocaleKeys.hesap.tr()),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: Text(LocaleKeys.giris.tr()),
                      onPressed: () {
                       // Navigator.of(context).pop();
                       Navigator.pushReplacementNamed(context, "/login");
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
