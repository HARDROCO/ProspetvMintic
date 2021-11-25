import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_net/nav/controller.dart';
import 'package:social_net/nav/response_screen.dart';

class Pagehome extends StatelessWidget {
  final ThemeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MinticMobile-Grupo5',

      //Aqui llamo a la clase ResponsePage
      //home: ResponsePage (),
      home: Scaffold(
          body: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),

              //Aqui se llama a la clase que contine toda la magia
              child: ResponseScreen(controller: controller),
            ),
          ),
          backgroundColor: Colors.white10),
    );
  }
}
