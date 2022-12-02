import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextoGrande extends StatelessWidget {
  final Color? color;
  final String texto;
  double tamanio;
  TextOverflow overflow;
  TextoGrande({
    super.key,
    this.color = Colors.black,
    required this.texto,
    this.tamanio = 18,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: tamanio,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
