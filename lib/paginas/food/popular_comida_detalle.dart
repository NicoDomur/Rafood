import 'package:flutter/material.dart';
import 'package:rafood/utils/Dimensiones.dart';
import 'package:rafood/widgets/app_columna.dart';
import 'package:rafood/widgets/app_icono.dart';
import 'package:rafood/widgets/widget_texto_ampliable.dart';

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
          // Imagen de fondo comida
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
          // Widgets iconos
          Positioned(
              top: Dimensiones.alto20,
              left: Dimensiones.ancho30,
              right: Dimensiones.ancho30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcono(icono: Icons.keyboard_backspace),
                  AppIcono(icono: Icons.shopping_bag_outlined),
                ],
              )),
          // Descripcion de comida
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
                  const AppColumna(texto: 'Preuba de texto'),
                  SizedBox(height: Dimensiones.alto20),
                  TextoGrande(texto: 'Descripcion'),
                  SizedBox(height: Dimensiones.alto20),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: TextoAmpliableWidget(
                          texto:
                              'Fusce a vehicula risus, et accumsan elit. In sed euismod justo. Maecenas venenatis neque quis arcu tincidunt luctus. Nunc ante erat, ornare vel tempus id, bibendum eu turpis. Nam luctus velit risus, in fermentum purus malesuada tempus. Sed elementum nisi et dictum consectetur. Duis finibus, risus eget euismod euismod, neque mauris condimentum lorem, ut gravida mauris dolor vitae diam. Mauris ut quam mi. Fusce sem nulla, hendrerit at blandit et, commodo ac libero. Vivamus mauris risus, hendrerit eget fermentum faucibus, cursus at elit. Proin et lectus eros. Maecenas aliquam tristique facilisis. Vivamus luctus vitae libero fermentum hendrerit. Nam quis tristique sapien. Fusce auctor consectetur rutrum. Aliquam vehicula mattis blandit. Aenean hendrerit rutrum arcu sed elementum. Integer ut ligula pharetra urna suscipit consequat. Nullam nunc neque, varius in est nec, vulputate tristique orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas quis mauris quis erat rutrum egestas. Vestibulum accumsan nisi ut consectetur porta. Quisque congue ex et massa sollicitudin varius.'),
                    ),
                  )
                ],
              ),
            ),
          )
          // Widget expandible
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(
          top: Dimensiones.alto20,
          bottom: Dimensiones.alto20,
          left: Dimensiones.ancho15,
          right: Dimensiones.ancho15,
        ),
        decoration: BoxDecoration(
          color: Temas.tenue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensiones.radio15),
            topRight: Radius.circular(Dimensiones.radio15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensiones.radio15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensiones.radio15),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(Icons.remove),
                  SizedBox(width: Dimensiones.ancho10 / 2),
                  TextoGrande(texto: '0'),
                  SizedBox(
                    width: Dimensiones.ancho10 / 2,
                  ),
                  const Icon(Icons.add)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensiones.radio15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensiones.radio15),
                color: Temas.secundarioLight,
              ),
              child: TextoGrande(
                  texto: '\$0 Añadir al carrito', color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
