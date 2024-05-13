import 'package:flutter/material.dart';

class Favorito extends StatefulWidget {
  _FavoritoState createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  bool _isFavorited = false;
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isFavorited ? Icons.favorite : Icons.favorite_border,
        color: _isFavorited ? Colors.red : null,
      ),
      onPressed: () {
        setState(() {
          _isFavorited = !_isFavorited;
        });
      },
    );
  }
}
