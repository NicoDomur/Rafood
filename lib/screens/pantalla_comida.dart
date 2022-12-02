import 'package:flutter/material.dart';
import 'package:rafood/theme/temas.dart';
import 'package:rafood/widgets/widget_texto_chico.dart';
import 'package:rafood/widgets/widget_texto_grande.dart';

class PantallaComida extends StatefulWidget {
  const PantallaComida({super.key});

  @override
  State<PantallaComida> createState() => _PantallaComidaState();
}

class _PantallaComidaState extends State<PantallaComida> {
  PageController pc = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      height: 300,
      child: PageView.builder(
        controller: pc,
        itemCount: 5,
        itemBuilder: (context, posicion) {
          return _paginasItem(posicion);
        },
      ),
    );
  }

  Widget _paginasItem(int i) {
    return Stack(
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: i.isEven ? Colors.teal : Colors.lime,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://n9.cl/sdq94'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextoGrande(texto: 'Prueba'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return const Icon(Icons.star,
                              color: Temas.secundarioLight, size: 15);
                        }),
                      ),
                      const SizedBox(width: 10),
                      TextoChico(texto: '4.5'),
                      const SizedBox(width: 10),
                      TextoChico(texto: 'Quien lo vende'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
