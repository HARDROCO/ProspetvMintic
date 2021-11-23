import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // constructor
  const MyHomePage({Key? key}) : super(key: key);

  // sobreescribimos el metodo createState
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // barra superrior
      appBar: AppBar(
        title: const Text('Mi primera app'),
        // backgroundColor: Colors.red[300],
      ),

      // cuerpo de la app
      body: Column(
        // crea una columna en la app o fila mejor dicho
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //widget contenedor
            // parametros del contenedor
            margin: const EdgeInsets.all(20), //margen del borde
            color: Colors.red[300], // color del contenedor
            width: 399, //ancho del contenedor
            height: 50, // alto del contenedor
            padding: const EdgeInsets.all(10), //margen del contenido interno
            alignment: Alignment.center, //alineacion del contenido
            child: Text(
              'Hola mundo en contenedor',
              style: TextStyle(fontSize: 20.0), //texto del contenedor
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            color: Colors.blue[300],
            width: 399,
            height: 50,
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'contenedor 2',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(20),
              color: Colors.green[300],
              width: 399,
              height: 50,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                'contenedor 3, expandend',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),

      // boton flotante inferior
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('hola');
        },
      ),
    );
  }

  //   // crear widget con imagen de fondo
  // Widget Cuerpo() {
  //   return Container(
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: NetworkImage(
  //               'https://www.androidsis.com/wp-content/uploads/2018/01/Fondo-pantalla-8.jpg'),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       child: Center(
  //           child: Column(
  //         mainAxisAlignment:
  //             MainAxisAlignment.center, //alienar contenido de col
  //         // widgets inicio de sesión
  //         children: <Widget>[
  //           // Logo(),
  //           // SizedBox(
  //           //   // da separacion entre widgets
  //           //   height: 50,
  //           // ),
  //           Nombre(),
  //           SizedBox(
  //             // da separacion entre widgets
  //             height: 20,
  //           ),
  //           Usuario(),
  //           Contrasena(),
  //           SizedBox(
  //             height: 40,
  //           ),
  //           BotonInicio2(),
  //           RecuperarPass()
  //         ],
  //       )));
  // }


}
