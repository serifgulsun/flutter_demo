import 'package:demo/language/locale_keys.g.dart';
import 'package:demo/menu/homedrawer.dart';
import 'package:demo/pages/archive.dart';
import 'package:demo/pages/details.dart';
import 'package:demo/pages/users.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

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
     String secim ="";
     if (i==0)
     {
       await context.setLocale(Locale("tr"));
       secim ="Türkçe dili seçildi";
     }

     else if (i==1)
     {
     await context.setLocale(Locale("en"));
     secim ="English language selected";
     }
     Fluttertoast.showToast(
        msg: secim,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
      ); 
  }

 final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.blueGrey,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.sayfalar.tr()),
        leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (context, value, child) {
                return Icon(
                  value.visible ? Icons.clear : Icons.menu,
                );
              },
            ),
          ),


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
            backgroundColor: Colors.blueAccent,
            icon: Icon(Icons.account_circle),
            label: LocaleKeys.kullanicilar.tr(),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(Icons.comment),
            label: LocaleKeys.detaylar.tr(),
          ),
        ],
        onTap: (int i) {
          aktifOge = i;
          setState(() {});
        },
      ),
    ),
    drawer: HomeDrawer(),
    );
  }
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
