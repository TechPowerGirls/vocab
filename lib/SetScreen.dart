import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'flashCard.dart';
class SetScreen extends StatefulWidget {
  @override
  _SetScreenState createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Level screen"),
      ),
      body: GridView.count(
       crossAxisCount: 3,
        children: [
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (_)=>FlashCardScreen()));
          },
            child: VxBox(
                child: "set 1".text.make()
            ).red600.p32.roundedLg.shadowXs.make().centered().py12(),
          ),
          VxBox(
              child: "set 2".text.make()
          ).red600.p32.roundedLg.shadowXs.make().centered().py12(),
          VxBox(
              child: "set 3".text.make()
          ).red600.p32.roundedLg.shadowXs.make().centered().py12(),
        ],
      ),
    );
  }
}
