import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'SetScreen.dart';
class LevelScreen extends StatefulWidget {
  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Level screen"),
      ),
      body: Column(
        children: [
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_)=>SetScreen()));
            },
            child: VxBox(
              child: "Level 1".text.make()
            ).red600.p64.roundedLg.shadowXs.make().centered().py12(),
          ),
          VxBox(
              child: "Level 2".text.make()
          ).red600.p64.roundedLg.shadowXs.make().centered().py12(),
          VxBox(
              child: "Level 3".text.make()
          ).red600.p64.roundedLg.shadowXs.make().centered().py12(),
        ],
      ).scrollVertical(),
    );
  }
}
