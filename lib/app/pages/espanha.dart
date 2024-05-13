import 'package:flutter/material.dart';

class Espanha extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'img/ImagemDaEspanha.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 10, 10, 10)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark_border,
                              color: Color.fromARGB(255, 11, 11, 11)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'img/ParteDaEspanha.png',
                    fit: BoxFit.cover, // ou BoxFit.fill
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
