import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:demo/language/locale_keys.g.dart';
//import 'package:demo/menu/homedrawer.dart';
import 'package:demo/pages/archive.dart';
import 'package:demo/pages/details.dart';
import 'package:demo/pages/users.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ConvexBarPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ConvexbarState();
}

class ConvexbarState extends State<ConvexBarPages> {
  int aktifOge = 1;
  gecerliSayfa(int aktif) {
    switch (aktif) {
      case 0:
        return ArchivePages();
        break;
      case 1:
        return UsersPages();
        break;
      case 2:
        return DetailsPages();
        break;
      default:
        return ArchivePages();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("convex bottom bar pages"),
      ),
      body: gecerliSayfa(aktifOge),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.textIn,
        backgroundColor: Colors.red,
        items:[
          TabItem(
            icon: Icon(Icons.pages),
            title: LocaleKeys.sayfalar.tr(),
          ),
          TabItem(
            icon: Icon(Icons.account_circle),
            title: LocaleKeys.kullanicilar.tr(),
          ),
          TabItem(
            icon: Icon(Icons.comment),
            title: LocaleKeys.detaylar.tr(),
          ),
          
        ],
        initialActiveIndex: 1,
        onTap: (int i) {
          aktifOge = i;
          setState(() {});
        },
      ),
      //drawer: HomeDrawer(),
    );
  }
}
