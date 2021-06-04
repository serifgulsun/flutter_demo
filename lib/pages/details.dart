import 'package:demo/language/locale_keys.g.dart';
import 'package:demo/widget/maincard.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailsPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailsState();
}

class DetailsState extends State<DetailsPages> {
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Scaffold(
      //backgroundColor: Colors.grey.shade400,
      body: SlidingUpPanel(
        backdropEnabled: true,
        panel: Center(
          child: Container(
              child: Center(
                  child: new GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              MainCard("/appbarpages", "resim1.jpg", "Tabbar Pages"),
              MainCard("/convexbarpages", "resim1.jpg", "convex bottom bar"),
              MainCard("/collapsingtoolbarpages", "resim1.jpg",
                  "collapsing toolbar pages"),
              MainCard("/carouselpages", "resim1.jpg", "carousel pages"),
            ],
          ))),
        ),
        collapsed: Container(
          decoration:
              BoxDecoration(color: Colors.blueGrey, borderRadius: radius),
          child: Center(
            child: Text(LocaleKeys.detaylar.tr(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Text(LocaleKeys.detaylar.tr()),
        ),
        borderRadius: radius,
      ),
    );
  }
}
