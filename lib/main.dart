import 'package:flutter/material.dart';
import 'app/pages/login.dart';
import 'app/pages/integrado.dart';
import 'app/pages/home.dart';
import 'app/pages/espanha.dart';
import 'app/pages/lugares.dart';
import 'app/pages/perfil.dart';
import 'app/pages/menssagens.dart';

void main() {
  runApp(Atividade3());
}

class Atividade3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(),
        ),
      routes: {
        '/atividade3': (context) => Atividade3(),
        '/login': (context) => Login(), 
        '/integrado': (context) => Integrado(),
        '/home': (context) => Home(),
        '/espanha': (context) => Espanha(),
        '/lugares': (context) => Lugares(),
        '/perfil': (context) => Perfil(),
        '/menssagens': (context) => Menssagens(),
      },
      //primeira tela a ser corregada
      initialRoute: '/login',
    );
  }
}
