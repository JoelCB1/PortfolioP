import 'package:flutter/material.dart';
import 'package:flutter_application_portafoliojoel/screens/home_screen.dart';
import 'package:flutter_application_portafoliojoel/screens/contacto_screen.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    return {
      '/home': (BuildContext context) => const HomeScreen(title: 'Menú'),
      '/contacto': (BuildContext context) => const ContactoScreen(),
    };
  }
}
