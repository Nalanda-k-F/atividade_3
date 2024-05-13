import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Perfil',
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.edit_rounded),
              onPressed: () {},
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('img/nalanda.png'),
          ),
          SizedBox(height: 9),
          Text(
            'Nalanda',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 9),
          Text(
            'nalanda@gmail.com',
            style: TextStyle(color: Colors.blueGrey[200]),
          ),
         SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5), // Arredonda as bordas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(10, 0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Recompensa'),
                    Text(
                      '350',
                      style: TextStyle(color: Colors.blue[400]),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5), // Arredonda as bordas
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(10, 0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Viagens'),
                    Text(
                      '238',
                      style: TextStyle(color: Colors.blue[400]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 125,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Lista de desejos'),
                    Text(
                      '473',
                      style: TextStyle(color: Colors.blue[400]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10,top:2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10,top: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text('Marcado como favorito'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10,top: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: ListTile(
              leading: Icon(Icons.airplane_ticket_outlined),
              title: Text('Viagens anteriores'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10,top: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10,top: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('Versão'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
