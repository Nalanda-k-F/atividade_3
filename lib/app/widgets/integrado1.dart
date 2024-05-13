import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  final PageController pageController;
  PrimeiraPagina(this.pageController);
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  'img/imgBarco.png',
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
                  'A vida é curta e o mundo é ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'vasto',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                Image.asset(
                  'img/Vector1.png',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Na Friends tours and travel, personalizamos'
                  ' passeios educacionais confiáveis e confiáveis para destinos em todo o mundo',
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
                pageController.animateToPage(1,
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
                'Iniciar',
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
