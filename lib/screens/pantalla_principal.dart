import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ListView(
      children: [
        const SizedBox(height: 10),
        GestureDetector(
          child: Card(
            child: Column(children: [
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/640px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text('titulo'),
                subtitle: const Text('descripcion'),
                contentPadding: const EdgeInsets.only(
                    right: 30, left: 30, bottom: 20, top: 20),
              ),
            ]),
          ),
          onTap: () {
            /*
            final ruta = MaterialPageRoute(
                builder: (context) => ComidaScreen(
                      id: id,
                      categoria: categoria,
                      descComida: descripcion,
                      nombreComida: titulo,
                      precio: precio,
                      ubicacion: ubicacion,
                      imagenComida: imagenComida,
                    ));
            Navigator.push(context, ruta);
            */
          },
        ),
        const SizedBox(height: 10),
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
