import 'package:flutter/material.dart';
import 'package:vocab/slotGame.dart';
class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AE5FF),
      appBar: AppBar(title: Text("Viking Game"),centerTitle: true,
        backgroundColor: Colors.red,),

      body: DicePage(),
    );
  }
}
