import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rafood"),
        actions: [
          Row(
            children: [
              FloatingActionButton.small(
                heroTag: 'busqueda',
                disabledElevation: 0,
                elevation: 0,
                onPressed: () {},
                child: const Icon(Icons.search),
              ),
              FloatingActionButton.small(
                heroTag: 'configuracion',
                onPressed: () {
                  print("Hola Danna mi amor");
                  print("Doris, vuelve a mi");
                },
                child: const Icon(Icons.settings),
              ),
            ],
          )
        ],
      ),
      body: const Center(child: Text('Hola')),
    );
  }
}
