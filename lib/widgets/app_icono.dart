import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:rafood/utils/Dimensiones.dart';

class AppIcono extends StatelessWidget {
  final IconData icono;
  final Color backgroundColor;
  final Color iconoColor;
  final double tamanio;

  const AppIcono(
      {Key? key,
      required this.icono,
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconoColor = const Color(0xFF756d54),
      this.tamanio = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tamanio,
      height: tamanio,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(tamanio / 2),
          color: backgroundColor),
      child: Icon(icono, color: iconoColor, size: Dimensiones.tamIcono16),
    );
  }
}
