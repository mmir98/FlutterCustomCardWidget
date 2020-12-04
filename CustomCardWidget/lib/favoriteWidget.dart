import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isliked = false;

  void _toggleFavorite() {
    setState(() {
      if (_isliked) {
        _isliked = false;
      } else {
        _isliked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          _isliked ? Icons.favorite : Icons.favorite_border_outlined,
          color: _isliked ? Colors.red : Colors.black,
        ),
        onPressed: _toggleFavorite,
      ),
    );
  }
}
