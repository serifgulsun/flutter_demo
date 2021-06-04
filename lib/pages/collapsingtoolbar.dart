import 'package:flutter/material.dart';

class CollapsingToolbarPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CollapsingToolbarState();
}

class CollapsingToolbarState extends State<CollapsingToolbarPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueAccent.shade400,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 450,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Collapsing Toolbar Pages"),
              background: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: Center(
                child: Text(
                  "Collapsing toolbar",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
