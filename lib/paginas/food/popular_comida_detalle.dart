import 'package:flutter/material.dart';
import 'package:rafood/utils/Dimensiones.dart';
import 'package:rafood/widgets/app_icono.dart';

import '../../theme/temas.dart';
import '../../widgets/widget_icono_texto.dart';
import '../../widgets/widget_texto_chico.dart';
import '../../widgets/widget_texto_grande.dart';

class PopularComidaDetalle extends StatelessWidget {
  const PopularComidaDetalle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimensiones.comidaPopularImgTamanio,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://p4.wallpaperbetter.com/wallpaper/806/277/64/rem-blue-hair-re-zero-re-zero-kara-hajimeru-isekai-seikatsu-hd-wallpaper-preview.jpg"))),
          ),
        ),
        Positioned(
            top: Dimensiones.alto20,
            left: Dimensiones.ancho30,
            right: Dimensiones.ancho30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcono(icono: Icons.keyboard_backspace),
                const AppIcono(icono: Icons.shopping_bag_outlined),
              ],
            )),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: Dimensiones.comidaPopularImgTamanio,
          child: Container(
            padding: EdgeInsets.only(
                left: Dimensiones.ancho20,
                right: Dimensiones.ancho20,
                top: Dimensiones.alto15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensiones.radio15),
                    topLeft: Radius.circular(Dimensiones.radio15)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextoGrande(texto: 'Rem te amo'),
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
            ),
          ),
        )
      ],
    ));
  }
}
