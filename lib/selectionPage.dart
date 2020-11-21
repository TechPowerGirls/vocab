import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vocab/quiz.dart';
import 'package:vocab/selectionPage.dart';
import 'package:vocab/slotGame.dart';
import 'package:vocab/vocabCards.dart';

import 'flashCard.dart';
import 'game.dart';
import 'level.dart';
class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AE5FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF7AE5FF),
        elevation: 0,
      ),

      body: Container(
        child: Stack(

          children: [
            Image.asset("assets/images/back.png",width: context.screenWidth,).pOnly(top:325),
            Column(
              children: [

                50.heightBox,
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_)=>VikingVocabCards()));

                  },
                  child: VxBox(
                      child: "Viking Cards".text.xl4.fontFamily('Heorot').makeCentered()

                  ).red600.roundedSM.p16.make(),
                ),

                40.heightBox,
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_)=>QuizPage()));

                  },
                  child: VxBox(
                      child: "Viking Quiz".text.xl4.fontFamily('Heorot').makeCentered()

                  ).red600.roundedSM.p16.make(),
                ),
                40.heightBox,
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_)=>Game()));

                  },
                  child: VxBox(
                      child: "Viking Game".text.xl4.fontFamily('Heorot').makeCentered()

                  ).red600.roundedSM.p16.make(),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
