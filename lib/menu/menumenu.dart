import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "DAFTAR MENU",
    debugShowCheckedModeBanner: false,
    home: new menumenu(),
  ));
}

class menumenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DAFTAR MENU"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/1.jpg",
              width: 200.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Image.asset(
              "assets/images/2.jpg",
              width: 200.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Image.asset(
              "assets/images/3.jpg",
              width: 200.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
