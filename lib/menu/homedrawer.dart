import 'package:demo/language/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
     child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(LocaleKeys.mesajlar.tr()),
              onTap: () => Navigator.pop(context),
            ),
            Divider(
              height: 2,
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(LocaleKeys.ayarlar.tr()),
            ),
            Divider(
              height: 2,
              color: Colors.blueAccent,
            ),
            ExpansionTile(
              leading: Icon(Icons.settings),
              title: Text(LocaleKeys.hakkimizda.tr()),
              trailing: Icon(Icons.arrow_right),
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(LocaleKeys.profil.tr()),
                ),
                Divider(
                  height: 2,
                  color: Colors.blueAccent,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(LocaleKeys.ayarlar.tr()),
                ),
                Divider(
                  height: 2,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(LocaleKeys.cikis.tr()),
              onTap: () => Navigator.pushReplacementNamed(context, "/login"),
            ),
          ],
        ),
      ),
    );
  }

}