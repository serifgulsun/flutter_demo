import 'package:demo/language/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPagesState();
}

class LoginPagesState extends State<LoginPages> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
                    child: Text(
                      LocaleKeys.giris.tr(),
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
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(LocaleKeys.sifremiUnuttum.tr()),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () async {
                      //Navigator.pushReplacementNamed(context, "/register");
                      //Navigator.pushReplacementNamed(context, "/deneme");
                      // loadJsonData(nameController.text);
                      //dilSecimi(nameController.text);
                      Navigator.pushReplacementNamed(context, "/homepages");
                    },
                    child: Text(
                      LocaleKeys.giris.tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(LocaleKeys.hesap.tr()),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: Text(LocaleKeys.kayit.tr()),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/register");
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                //swich
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: Text("Türkçe"),
                      onPressed: () async {
                        await context.setLocale(Locale("tr"));
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: Text("English"),
                      onPressed: () async {
                        await context.setLocale(Locale("en"));
                      },
                    ),
                  ],
                  
                )),
              ],
            )));
  }
}
