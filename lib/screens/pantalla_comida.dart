import 'package:flutter/material.dart';

class PantallaComida extends StatefulWidget {
  const PantallaComida({super.key});

  @override
  State<PantallaComida> createState() => _PantallaComidaState();
}

class _PantallaComidaState extends State<PantallaComida> {
  PageController pc = PageController(viewportFraction: 1.0);

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
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
