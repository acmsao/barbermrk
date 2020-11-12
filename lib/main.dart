import 'package:barbermark/telas/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber Mark',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.orange,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Login(),
    );
  }
}
