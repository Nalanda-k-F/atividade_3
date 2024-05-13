import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
   final PageController pageController;
   SegundaPagina(this.pageController);
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  'img/pagina2.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 35,
                  right: 20,
                  child: TextButton(
                    onPressed: () {
                       Navigator.pushNamed(context, '/home');
                      
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
                      'É um grande mundo lá fora, vá ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' explorar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Image.asset(
                      'img/Vector2.png',
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
                pageController.animateToPage(3,
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
