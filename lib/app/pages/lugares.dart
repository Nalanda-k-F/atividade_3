import 'package:flutter/material.dart';
import 'package:atividade_3/app/widgets/favorito.dart';

class Lugares extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lugares Populares',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Todos os lugares populares',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              childAspectRatio: 0.5,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, right: 10, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Arredonda as bordas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Altera a posição da sombra
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/espanha');
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('img/Espanha01.png'),
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Espanha',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Madrid, Espanha',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blueGrey[200]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Text(
                                        ' 4.7',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Text(
                                        'R\$6459/',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'pessoa',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Favorito(),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 10, right: 25, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Arredonda as bordas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Altera a posição da sombra
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('img/franca01.png'),
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'França',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Text(
                                        'Paris, França',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey[200]),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Text(
                                        ' 4.8',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Text(
                                        'R\$6894/',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'pessoa',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Favorito(),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 25, right: 10, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Arredonda as bordas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Altera a posição da sombra
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('img/peru01.png'),
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Peru',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Mmachu picchu, Peru',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blueGrey[200]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Text(
                                        ' 4.3',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Text(
                                        'R\$1761/',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'pessoa',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Favorito(),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 25, right: 10, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Arredonda as bordas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Altera a posição da sombra
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('img/egito01.png'),
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Egito',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Pirâmide de Gizé, Egito',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blueGrey[200]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Text(
                                        ' 4.5',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Text(
                                        'R\$8857/',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'pessoa',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Favorito(),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 25, right: 10, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Arredonda as bordas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Altera a posição da sombra
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('img/islampur01.png'),
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Ainang Villa Resort',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Bastola, Islampur',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blueGrey[200]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Text(
                                        ' 4.3',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Text(
                                        'R\$761/',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'pessoa',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Favorito(),
                      ),
                    ],
                  ),
                ),
                // ... rest of your code ...
                Container(
                  margin: EdgeInsets.only(left: 25, right: 10, top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Arredonda as bordas
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Altera a posição da sombra
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('img/rio01.png'),
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Rio de Janeiro',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        color: Colors.blueGrey[200],
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Rio de Janeiro, Brasil',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blueGrey[200]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent),
                                      Text(
                                        ' 4.5',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    children: [
                                      Text(
                                        'R\$857/',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'pessoa',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Favorito(),
                      ),
                    ],
                  ),
                ),
              ],
              padding: EdgeInsets.only(bottom: 10),
            ),
          ),
        ],
      ),
    );
  }
}
