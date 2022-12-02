import 'package:flutter/material.dart';
import 'package:rafood/screens/pantalla_principal.dart';
import 'package:rafood/theme/temas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rafood',
      home: const PantallaPrincipal(),
      theme: Temas.lightTheme,
    );
  }
}
