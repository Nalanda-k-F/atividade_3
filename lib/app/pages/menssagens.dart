import 'package:flutter/material.dart';

class Menssagens extends StatefulWidget {
  _MenssagensState createState() => _MenssagensState();
}

class _MenssagensState extends State<Menssagens> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/menssagens');
        break;
      case 1:
        Navigator.pushNamed(context, '/home');
        break;
      case 2:
        Navigator.pushNamed(context, '/perfil');
        break;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Menssagens',
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Menssagens',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.edit)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pesquise bate-papos e mensagens',
                  filled: true,
                  fillColor: Color.fromARGB(255, 228, 228, 231),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {},
              ),
            ]),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset('img/Sajib.png'),
                        title: Row(children: [
                          Text(
                            'Sajib Rahman',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.check),
                          Text(
                            '09:46',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ]),
                        subtitle: Text(
                          'Hi, John! 👋 How are you doing?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 142, 141, 141),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset('img/Adom.png'),
                        title: Row(children: [
                          Text(
                            'Adom Shafi',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'img/2Verde.png',
                          ),
                          Text(
                            '08:42',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ]),
                        subtitle: Text(
                          'Typing...',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset('img/hr.png'),
                        title: Row(children: [
                          Text(
                            'HR Rumen ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'img/2Cinza.png',
                          ),
                          Text(
                            'Yesterday',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ]),
                        subtitle: Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Adicione esta linha
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'You:',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                ' Cool! ☺️ Let’s meet at 18:00 near the traveling!',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset('img/anjelina.png'),
                        title: Row(children: [
                          Text(
                            'Anjelina ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.check, color: Colors.grey[600]),
                          Text(
                            '07:56',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ]),
                        subtitle: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'You:',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                ' Hey, will you come to the party on Saturday?',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset('img/alexa.png'),
                        title: Row(children: [
                          Text(
                            'Alexa Shorna ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'img/2Verde.png',
                          ),
                          Text(
                            '05:52',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                          ),
                        ]),
                        subtitle: Text(
                          'Thank you for coming! Your or...',
                          style: TextStyle(
                            color: Color.fromARGB(255, 142, 141, 141),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Menssagens',

            // Navigator.pushNamed(context, '/espanha');
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
