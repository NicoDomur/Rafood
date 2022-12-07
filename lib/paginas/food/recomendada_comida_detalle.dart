import 'package:flutter/material.dart';
import 'package:rafood/theme/temas.dart';
import 'package:rafood/utils/Dimensiones.dart';
import 'package:rafood/widgets/app_icono.dart';
import 'package:rafood/widgets/widget_texto_ampliable.dart';
import 'package:rafood/widgets/widget_texto_grande.dart';

class RecomendadaComidaDetalle extends StatelessWidget {
  const RecomendadaComidaDetalle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 75,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcono(icono: Icons.clear),
                AppIcono(icono: Icons.shopping_bag_rounded)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensiones.radio15),
                    topRight: Radius.circular(Dimensiones.radio15),
                  ),
                ),
                child: Center(
                  child: TextoGrande(
                    tamanio: Dimensiones.fuente18,
                    texto: 'Prueba a ver que sale',
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Temas.secundarioLight,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://p4.wallpaperbetter.com/wallpaper/901/211/595/go-toubun-no-hanayome-nakano-miku-bikini-hd-wallpaper-preview.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                left: Dimensiones.ancho20,
                right: Dimensiones.ancho20,
                bottom: Dimensiones.alto20,
              ),
              child: const TextoAmpliableWidget(
                  texto:
                      'Mauris vel augue in nulla dignissim posuere quis eleifend enim. Praesent convallis semper risus, sit amet sagittis mi lobortis et. Integer elit magna, aliquet euismod ultrices vel, fermentum non sapien. Donec porta justo id leo sollicitudin laoreet vitae ut libero. Vestibulum non felis nec nisl congue accumsan sit amet ut diam. Mauris vestibulum euismod ipsum, ut laoreet libero. Vestibulum sem quam, dignissim non tempus ut, ultrices id elit. Nam id nisi a augue rhoncus efficitur. Etiam sit amet sem id tellus blandit iaculis vitae a libero. Aenean auctor congue nulla, in auctor risus suscipit a. Cras vitae augue in felis pulvinar faucibus eu in tellus. Aliquam erat volutpat. Fusce elit tortor, bibendum sed dignissim et, laoreet ac libero. Proin elementum tortor non lorem mattis luctus. Nullam quis dolor hendrerit, consectetur ligula ut, lacinia enim. Suspendisse eleifend quam et ornare condimentum. Vestibulum viverra diam ex, vitae bibendum libero varius sed. Donec ut augue lorem. Duis tincidunt magna massa, in tempus ipsum fermentum quis. Donec lacus lacus, iaculis at libero eu, pulvinar ornare felis. Sed pretium eros quis quam placerat dapibus. Vestibulum a tortor dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi aliquet tellus nec euismod malesuada. Maecenas commodo, sapien vel pellentesque vulputate, lectus metus tincidunt odio, a pulvinar sem tortor eu ex. Donec quis dapibus eros. Morbi sed blandit odio, in dictum velit. Vivamus in enim dolor. Pellentesque urna massa, fringilla nec finibus sed, porttitor sit amet justo. Ut at rhoncus felis, nec maximus sem. Fusce bibendum suscipit placerat. Pellentesque quis posuere velit. Sed sit amet diam tincidunt, pulvinar eros in, commodo elit. Sed at tincidunt turpis, vel volutpat dolor. Nunc faucibus nunc ac lorem ultricies, vel condimentum ipsum dignissim. Vivamus id ante velit. Aliquam facilisis faucibus justo, eget molestie orci interdum sed. Donec et sapien libero. Quisque et nisl ac massa aliquet semper. Vestibulum sed sem metus. Aliquam consequat vel nisl ac vestibulum. Mauris non erat porttitor, mattis justo quis, suscipit lacus.Nunc commodo lacinia erat vitae commodo. Pellentesque id interdum orci, vel aliquam nunc. Nulla finibus id enim ac sodales. Curabitur laoreet ornare neque a mattis. Nulla faucibus vel ex non interdum. Phasellus eu risus mauris. Suspendisse in vulputate nunc, et tincidunt nisl. Donec magna lorem, luctus sed risus sit amet, mollis egestas mauris. Proin id elit maximus, sollicitudin ex pellentesque, volutpat magna. Aliquam malesuada eros nec nibh dictum, vel ullamcorper magna consectetur. Sed vel nulla pulvinar, imperdiet dui non, euismod elit. Integer ut enim nibh. Sed vitae urna elementum, volutpat dui ac, ultrices magna. Donec tincidunt ex eget finibus consequat. Cras eu facilisis tellus. Duis sed convallis arcu.'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensiones.ancho20 * 2.5,
              right: Dimensiones.ancho20 * 2.5,
              top: Dimensiones.alto10,
              bottom: Dimensiones.alto10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcono(
                  icono: Icons.remove,
                  iconoColor: Colors.white,
                  backgroundColor: Temas.secundarioLight,
                  tamIcono: Dimensiones.tamIcono24,
                ),
                AppIcono(
                  icono: Icons.add,
                  iconoColor: Colors.white,
                  backgroundColor: Temas.secundarioLight,
                  tamIcono: Dimensiones.tamIcono24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
