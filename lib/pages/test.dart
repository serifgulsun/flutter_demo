import 'package:demo/language/locale_keys.g.dart';
import 'package:demo/menu/homedrawer.dart';
import 'package:demo/pages/archive.dart';
import 'package:demo/pages/details.dart';
import 'package:demo/pages/users.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePages> {
  int aktifOge = 0;
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

   void ornekFonksiyon(int i) async {

     if (i==0)
     {
       await context.setLocale(Locale("tr"));
     }

     else if (i==1)
     {
     await context.setLocale(Locale("en"));
     }
    /* Fluttertoast.showToast(
        msg: "$i . menü",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
      ); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.sayfalar.tr()),
          actions: <Widget>[
          PopupMenuButton(
              onSelected: (secilen) {
                switch (secilen) {
                  case 0:
                    print("deneme popup ${secilen.toString()}");
                    ornekFonksiyon(secilen);
                    break;
                  case 1:
                    print("deneme popup ${secilen.toString()}");
                    ornekFonksiyon(secilen);
                    break;
                  case 2:
                    print("deneme popup ${secilen.toString()}");
                    ornekFonksiyon(secilen);
                    break;
                  default:
                    print("deneme popup ${secilen.toString()}");
                    ornekFonksiyon(secilen);
                    break;
                }
              },
              icon: Icon(Icons.add_alert),
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(
                    value: 0,
                    child: ListTile(
                      title: Text("Türkçe"),
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      title: Text("English"),
                    ),
                  ),
                ];
              }),
        /*  IconButton(
            icon: Icon(Icons.login),
            tooltip: 'app bar',
            onPressed: () => {
              Navigator.pushNamed(context, "/appbarpages"),
            },
          ), */
        ],
      ),
      body: gecerliSayfa(aktifOge),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // ayarlar
        currentIndex: aktifOge,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(Icons.pages),
            label: LocaleKeys.sayfalar.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: LocaleKeys.kullanicilar.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: LocaleKeys.detaylar.tr(),
          ),
        ],
        onTap: (int i) {
          aktifOge = i;
          setState(() {});
        },
      ),
      drawer: HomeDrawer(),
    );
  }
}
