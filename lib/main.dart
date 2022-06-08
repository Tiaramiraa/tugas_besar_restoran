import 'package:flutter/material.dart';

void main() => runApp(BelajarImages());

class BelajarImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("RESTORAN"), backgroundColor: Colors.black),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.black87,
          child: Image.asset('assets/images/logo1.jpg'),
        ),
      ),
      ),);
      @override
  Widget build(BuildContext context){
    return new Scaffold(
      AppBar: new AppBar(),
      Body: new center(
        child: new IconButton(
          icon: new Icon(Icons.home, Size: 50.0,),
          ),

      ),
    ),
      ),);
      }
}

      }
}
        
