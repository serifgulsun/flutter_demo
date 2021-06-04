import 'package:flutter/material.dart';

class UsersCard extends StatelessWidget {
  final String rota;
  final String baslik;
  //final String resim;
  UsersCard(this.baslik, {this.rota});

  @override
  Widget build(Object context) {
    return new GestureDetector(
      onTap: () => Navigator.pushNamed(context, rota),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                      "https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.blueAccent.shade200,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(1),
          alignment: Alignment.bottomCenter,
          child: Transform(
            alignment: Alignment.bottomCenter,
            transform: Matrix4.skewY(0.0)..rotateZ(0.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              color: Color(0xCDFFFFFF),
              child: new Text(
                baslik,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
