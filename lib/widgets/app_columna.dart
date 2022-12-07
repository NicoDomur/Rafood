import 'package:flutter/material.dart';
import 'package:rafood/theme/temas.dart';
import 'package:rafood/utils/Dimensiones.dart';
import 'package:rafood/widgets/widget_icono_texto.dart';
import 'package:rafood/widgets/widget_texto_chico.dart';
import 'package:rafood/widgets/widget_texto_grande.dart';

class AppColumna extends StatelessWidget {
  final String texto;
  const AppColumna({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextoGrande(texto: texto, tamanio: Dimensiones.fuente24),
        SizedBox(height: Dimensiones.alto10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return const Icon(Icons.star,
                    color: Temas.secundarioLight, size: 15);
              }),
            ),
            SizedBox(width: Dimensiones.ancho10),
            TextoChico(texto: '5'),
            SizedBox(width: Dimensiones.ancho10),
            TextoChico(texto: 'Califiacion'),
          ],
        ),
        SizedBox(height: Dimensiones.alto20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconoTexto(
                icono: Icons.check_circle,
                texto: 'Disponible',
                colorIcono: Colors.green),
            IconoTexto(
                icono: Icons.place,
                texto: 'Ubicacion',
                colorIcono: Colors.indigo),
            IconoTexto(
                icono: Icons.favorite,
                texto: 'No se me ocurre',
                colorIcono: Colors.red)
          ],
        ),
      ],
    );
  }
}
