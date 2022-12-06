import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafood/paginas/food/popular_comida_detalle.dart';
import 'package:rafood/paginas/screens/pantalla_principal.dart';
import 'package:rafood/theme/temas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rafood',
      home: PopularComidaDetalle(),
      theme: Temas.lightTheme,
    );
  }
}
