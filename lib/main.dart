import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Uriel Rivas",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Rivas Mireles"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                text: "Ferreteria",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Ferreteria",
                icon: Icon(Icons.abc),
              ),
              Tab(
                text: "Ferreteria",
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: "Ferreteria",
                icon: Icon(Icons.cake_sharp),
              )
            ]),
          ),
          body: TabBarView(children: const <Widget>[
            Center(
              child: Text(
                "Chivas rebaño",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Center(
              child: Text(
                "America jotos",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Center(
              child: Text(
                "Cu Cu pumas",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Center(
                child: Text(
              "Cemen cemento azul",
              style: TextStyle(fontStyle: FontStyle.italic),
            ))
          ]),
        ));
  }
}
