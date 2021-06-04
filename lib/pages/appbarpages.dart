import 'package:demo/pages/archive.dart';
import 'package:demo/pages/details.dart';
import 'package:demo/pages/users.dart';
import 'package:flutter/material.dart';

class AppBarPages extends StatefulWidget {
  final String gelenDeger;
  AppBarPages(
      {this.gelenDeger}); // köşeli parantez isteğe bağlı şekilde değer göndermeye bilirsin
  @override
  State<StatefulWidget> createState() => AppBarState();
}

class AppBarState extends State<AppBarPages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.gelenDeger != null
              ? widget.gelenDeger
              : "Tabbar Pages"),
              bottom: TabBar(
                tabs: <Widget>[
                   Icon(Icons.archive),
                   Icon(Icons.account_circle),
                   Icon(Icons.comment),
                ],
              ),
        ), 
        body: TabBarView(
          children: <Widget>[
             ArchivePages(),
             UsersPages(),
             DetailsPages(),
          ],
        ),
      ),
    );
  }
}
