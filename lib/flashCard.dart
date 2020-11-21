import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class FlashCardScreen extends StatefulWidget {
  @override
  _FlashCardScreenState createState() => _FlashCardScreenState();
}

class _FlashCardScreenState extends State<FlashCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Fat").text.xl5.bold.make(),centerTitle: true
      ),
      body: Column(
        children: [
         10.heightBox,
          Image.network("https://image.freepik.com/free-vector/happy-cute-fat-unhealthy-boy-standing_97632-1307.jpg",
          fit: BoxFit.cover,scale: 3,).centered(),
          10.heightBox,
          "Description".text.xl2.bold.red600.makeCentered(),
          "a person or animal) having a large amount of excess flesh.".text.xl.makeCentered().p16().box.shadowXs.roundedSM.makeCentered().p8(),
          10.heightBox,


        ],
      ),
    );
  }
}
