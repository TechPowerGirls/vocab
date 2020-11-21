import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vocab/quiz.dart';
import 'package:vocab/selectionPage.dart';
import 'package:vocab/slotGame.dart';
import 'package:vocab/vocabCards.dart';

import 'flashCard.dart';
import 'game.dart';
import 'level.dart';
class DashBoard extends StatefulWidget {

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AE5FF),

      body: Container(
        child: Stack(

          children: [
            Image.asset("assets/images/back.png",width: context.screenWidth,).pOnly(top:405),
           Column(
             children: [
               30.heightBox,
               Image.asset("assets/images/man.png",height: context.screenHeight*0.4,).centered(),
               30.heightBox,
               "Viking Vocab".text.xl6.fontFamily('Heorot').makeCentered(),
               "Cards".text.xl6.fontFamily('Heorot').makeCentered(),
               30.heightBox,
               FlatButton(
                 onPressed: (){

                   Navigator.push(context, MaterialPageRoute(
                       builder: (_)=>SelectionPage()));

                 },
                 child: VxBox(
                     child: Icon(Icons.arrow_forward_ios)

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
