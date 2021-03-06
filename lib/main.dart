import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:social_net/ui/widgets/filas_colum_list.dart';
import 'package:social_net/nav/vistas.dart';

void main() {
  runApp(const MyApp());
}

// construir una clase para el widget MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Social Network peliculas',
      debugShowCheckedModeBanner: false,
      // tema de la app
      theme: ThemeChanger.ligthTheme,
      // estructura de la app... cambiar segun la necesidad
      darkTheme: ThemeChanger.darkTheme,
      themeMode: ThemeMode.system,
      //home: MyHomePage(),
      home: HomePage(),
      // rutas
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/Home',
            page: () => HomePage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/Login',
            page: () => InicioSesion(),
            transition: Transition.zoom),
        GetPage(
            name: '/Signup',
            page: () => SignUpPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/Profile',
            page: () => ProfilePage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/ImageGoogle',
            page: () => ImageGoogle(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/TesterPage',
            page: () => TesterPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/VistaPpal',
            page: () => VistaPpal(),
            transition: Transition.fadeIn),
      ],
    );
  }
}
