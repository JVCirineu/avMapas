import 'package:flutter/material.dart';
import 'principal.dart';      // importa a tela principal do aplicativo


void main() {
  runApp(const MyApp());        // inicia o aplicativo
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // construtor da classe MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // retorna o MaterialApp, widget de nível superior para um aplicativo Material Design
      debugShowCheckedModeBanner: false,
      // desativa o banner de debug no canto superior direito
      title: 'App Mapas',
      // define o título do aplicativo
      home: Principal(),
    );
  }
}