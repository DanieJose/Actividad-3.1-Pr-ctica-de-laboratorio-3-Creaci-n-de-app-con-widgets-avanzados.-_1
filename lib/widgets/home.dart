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
                child: Text("Menu Principal del Tiempo"),
              ),
              ListTile(
                title: const Text('Today'),
                onTap:
                    () {}, //Don't return 'null' from a funtioin with a return type of 'void'. Try removing the 'null'
              ),
              const ListTile(title: Text("This Week"), onTap: null),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Menu Temperatura del Tiempo"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.beach_access)),
              Tab(icon: Icon(Icons.dadd_locationt)),
              Tab(icon: Icon(Icons.air_sharp)),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Column(
            children: [
              Icon(Icons.beach_access),
              Text("London 21°C"),
              ListTile(
                leading: Icon(Icons.day_sunny),
                trailing: Icon(Icons.cloudy_snowing),
                title: Text('Posible Lluvia el dia de hoy'),
                subtitle: Text('75% Probabilidad lluvia'),
                tileColor: Colors.amber,
              )
            ],
          ),
          Icon(Icons.dadd_locationt),
          Icon(Icons.air_sharp)
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
