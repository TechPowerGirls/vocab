import 'dart:math';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int centerDiceNumber = 1;
  int rightDiceNumber = 1;

  void DiceFaceChange(){
    setState(() {
      leftDiceNumber= Random().nextInt(3)+1;
      centerDiceNumber= Random().nextInt(3)+1;
      rightDiceNumber= Random().nextInt(3)+1;


    });

  }
  @override
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/game$leftDiceNumber.png'),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/game$centerDiceNumber.png'),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/game$rightDiceNumber.png'),
                  )
              ),


            ],
          ),


        ),
        Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            FlatButton(
              onPressed: (){
                setState(() {
                  DiceFaceChange();
                  if (leftDiceNumber == centerDiceNumber && leftDiceNumber == rightDiceNumber )  {
                    showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          backgroundColor: Color(0xFF7AE5FF),
                      child: VxBox(
                        child: Text("Hurray!! you have Got Jackpot").text.center.xl4.white.fontFamily('Heorot').makeCentered().p12(),
                      ).red600.square(300).roundedFull.p64.make()
                    ));
                  }

                });

              },


              child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Attack'),
                  )
              ),
            ),
          ],
        )),
      ],
    );
  }
}

class LeftDiceNumber {
}
