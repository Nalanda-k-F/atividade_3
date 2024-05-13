import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.only( bottom: 5),
                    child: Column(
                      children: [
                        Text(
                          'Faça seu login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          'Faça login para continuar nosso aplicativo',
                          style: TextStyle(
                            color: Color.fromARGB(135, 86, 84, 84),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'nalanda@gmail.com',
                    filled: true,
                    fillColor: Color(0xFFF7F7F9), // Cor de fundo cinza
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none, // Remove a borda padrão
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira seu e-mail';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '********',
                    filled: true,
                    fillColor: Color(0xFFF7F7F9), // Cor de fundo cinza
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none, // Remove a borda padrão
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Color.fromARGB(255, 122, 123, 125),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira sua senha';
                    }
                    return null;
                  },
                ),
                Container(
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        TextButton(
                          child: Text('Esqueceu a senha?',
                              style: TextStyle(
                                color: Color(0xfff0D6EFD),
                                fontSize: 15,
                              )),
                          onPressed: () {
                            // Ação para recuperar senha
                          },
                        ),
                      ],
                    )),
                SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {
                   if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/integrado');
                   }
                },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Color.fromARGB(255, 208, 220, 237),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff0D6EFD), // Cor de fundo do botão
                    minimumSize: Size(200, 50), // Largura e altura do botão
                  ),
                                    
                ),
                Container(
                    padding: EdgeInsets.only(left: 35, top: 35),
                    child: Row(
                      children: [
                        Text(
                          'Não tem uma conta?',
                          style: TextStyle(
                            color: Color.fromARGB(135, 86, 84, 84),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          child: Text(
                            ' Inscrever-se',
                            style: TextStyle(
                              color: Color(0xfff0D6EFD),
                            ),
                          ),
                          onPressed: () {
                            // Ação para inscrever-se
                          },
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'ou conecte',
                          style: TextStyle(
                            color: Color.fromARGB(135, 86, 84, 84),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 15, top: 25, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Color.fromARGB(255, 46, 106, 234),
                          size: 50.0,
                        ),
                        SizedBox(width: 6), // Espaço entre os ícones
                        // Espaço entre os ícones
                        Image(
                          image: AssetImage('img/instagram.png'),
                        ),
                        SizedBox(width: 6),
                        Image(
                          image: AssetImage('img/twitter.png'),
                        ),
// Espaço entre os ícones
                      ],
                    )),
              ],
            ),
          ),
        ),
      );
  }
}
