import 'package:flutter/material.dart';
import 'package:questionari_app/email_checker.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

void doNothing() {
  // Esta función no hace nada.
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'proyecto reborn',
      theme: ThemeData(
        primaryColor: Colors.greenAccent, // Color principal de la aplicación
      ),
      home: Scaffold(
        body: Welcome(),
    ));
  }
}
