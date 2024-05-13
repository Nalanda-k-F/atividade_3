import 'package:flutter/material.dart';

class TerceiraPagina extends StatelessWidget {
  final PageController pageController;
  TerceiraPagina(this.pageController);
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  'img/pagina3.png',
                  fit: BoxFit.cover,
                 width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 35,
                  right: 20,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                      print('Botão Skip pressionado!');
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'As pessoas não fazem viagens,'
                  ' as viagens levam',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  ' pessoas',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                Image.asset(
                  'img/Vector3.png',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Para aproveitar ao máximo sua aventura você só precisa'
                  ' sair e ir para onde quiser. Estamos esperando por você.',
                  style: TextStyle(color: Colors.blueGrey[100]),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
           Container(
             padding: EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                pageController.animateToPage(0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xfff0D6EFD),
                 minimumSize: Size(30, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 4.0,
              ),
              child: Text(
                'Próximo',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
