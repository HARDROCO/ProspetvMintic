import 'package:social_net/vistas/home.dart';
import 'package:social_net/vistas/estados.dart';
import 'package:social_net/vistas/chat.dart';
import 'package:social_net/vistas/post.dart';
import 'package:social_net/vistas/publicaciones.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _MyNav();
}

class _MyNav extends State<Nav> {
  int _paginaActual = 0;
  final List<Widget> _paginas = [
    Pagehome(),
    PageSocial(),
    Pageestados(),
    Pagechat(),
    Pagepost(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mintic',
      home: Scaffold(
        appBar: AppBar(
          //agarra una clase y le carga automaticamente el titulo
          //title: Text(Nav.title),
          title: Text('ProsperTv'),
          //centra titulo
          centerTitle: true,
          //parte superior derecha icono
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              PageSocial();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                Pagechat();
              },
            ),
            IconButton(
              icon: Icon(Icons.person_outline_outlined),
              onPressed: () {
                Pagepost();
              },
            )
          ],
          backgroundColor: Color.fromARGB(255, 83, 68, 145),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.purple[700],
          type: BottomNavigationBarType.fixed,
          onTap: (posicion) {
            setState(() {
              _paginaActual = posicion;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.social_distance), label: "Social"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_sharp), label: "Estados"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_returned_outlined), label: "Post"),
          ],
        ),
      ),
    );
  }
}
