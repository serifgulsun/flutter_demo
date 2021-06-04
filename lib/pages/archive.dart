import 'package:demo/widget/maincard.dart';
import 'package:flutter/material.dart';

class ArchivePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ArchiveState();
}

class ArchiveState extends State<ArchivePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.redAccent.shade400,
      body: Container(
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
            MainCard("/collapsingtoolbarpages", "resim1.jpg", "collapsing toolbar pages"),
            MainCard("/carouselpages", "resim1.jpg", "carousel pages"),
        ],
      ))),
    );
  }
}
