import 'package:flutter/material.dart';
import 'package:atividade_3/app/widgets/integrado1.dart';
import 'package:atividade_3/app/widgets/integrado2.dart';
import 'package:atividade_3/app/widgets/integrado3.dart';

class Integrado extends StatefulWidget {
  _IntegradoState createState() => _IntegradoState();
}

class _IntegradoState extends State<Integrado> {
  PageController _pageController = PageController(initialPage: 0);
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          PrimeiraPagina(_pageController),
          SegundaPagina(_pageController),
          TerceiraPagina(_pageController),
        ],
      ),
    );
  }
}
