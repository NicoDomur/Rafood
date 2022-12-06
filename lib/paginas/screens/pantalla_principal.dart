import 'package:flutter/material.dart';
import 'package:rafood/paginas/screens/pantalla_comida.dart';
import 'package:rafood/widgets/widget_comida.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    Column(
      children: const [
        SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: PantallaComida(),
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
    ListView(
      children: const [
        Center(
          child: Text('Hola 2'),
        )
      ],
    ),
    ListView(
      children: const [
        Center(
          child: Text('Hola 3'),
        )
      ],
    ),
  ];

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
                onPressed: () {},
                child: const Icon(Icons.search),
              ),
              FloatingActionButton.small(
                heroTag: 'configuracion',
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
