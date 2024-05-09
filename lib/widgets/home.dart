
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menu Principal"),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {}, //Don't return 'null' from a funtioin with a return type of 'void'. Try removing the 'null'
              ),
              const ListTile(title: Text("Menu 2"), onTap: null),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Menu Drawer"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Column(
            children: [
              Icon(Icons.directions_car),
              Text("Aqui puedo poner el contenido"),
              ListTile(
                leading: Icon(Icons.directions_car),
                trailing: Icon(Icons.safety_check),
                title: Text('LisTitle with red background'),
                subtitle: Text('Yo soy un subtitulo'),
                tileColor: Colors.amber,
              )
            ],
          ),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike)
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // some code to undo the change
          },
        ),
      ),
    );
  }
}
