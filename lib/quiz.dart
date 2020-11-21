import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var len;
  final Ref = Firestore.instance.collection("Que&Ans");
  PageController controller = PageController();
  final FlutterTts flutterTts = FlutterTts();

  var currentPageValue = 0.0;

  int stepNumber = 1;

  speak(String n) async {
    await flutterTts.speak(n);
    flutterTts.setLanguage("en-GB");
    flutterTts.setPitch(50);
    flutterTts.setSpeechRate(1);
  }

  int _radioValue1 = -1;
  int correctScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AE5FF),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(" Viking Quiz"),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: Ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              len = snapshot.data.documents.length;

              return Column(
                children: [
                  30.heightBox,
                  Container(
                    height: 300,
                    child: PageView.builder(
                      controller: controller,
                      itemBuilder: (context, position) {
                        var answer =
                            snapshot.data.documents[position].data['answer'];

                        return Container(
                            child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                snapshot
                                    .data.documents[position].data['question'],
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                ),
                              ),
                              10.heightBox,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Radio(
                                        value: 0,
                                        groupValue: _radioValue1,
                                        onChanged: (value) {
                                          setState(() {
                                            _radioValue1 = value;
                                            if (answer ==
                                                snapshot
                                                    .data
                                                    .documents[position]
                                                    .data['option1']) {
                                              Fluttertoast.showToast(
                                                  msg: 'Correct !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                              correctScore++;
                                            } else {
                                              Fluttertoast.showToast(
                                                  msg: 'Try again !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                            }
                                          });
                                        },
                                      ),
                                      Text(
                                        snapshot.data.documents[position]
                                            .data['option1'],
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: 1,
                                        groupValue: _radioValue1,
                                        onChanged: (value) {
                                          setState(() {
                                            _radioValue1 = value;
                                            if (answer ==
                                                snapshot
                                                    .data
                                                    .documents[position]
                                                    .data['option2']) {
                                              Fluttertoast.showToast(
                                                  msg: 'Correct !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                              correctScore++;
                                            } else {
                                              Fluttertoast.showToast(
                                                  msg: 'Try again !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                            }
                                          });
                                        },
                                      ),
                                      Text(
                                        snapshot.data.documents[position]
                                            .data['option2'],
                                        style: new TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: 2,
                                        groupValue: _radioValue1,
                                        onChanged: (value) {
                                          setState(() {
                                            _radioValue1 = value;
                                            if (answer ==
                                                snapshot
                                                    .data
                                                    .documents[position]
                                                    .data['option3']) {
                                              Fluttertoast.showToast(
                                                  msg: 'Correct !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                              correctScore++;
                                            } else {
                                              Fluttertoast.showToast(
                                                  msg: 'Try again !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                            }
                                          });
                                        },
                                      ),
                                      Text(
                                        snapshot.data.documents[position]
                                            .data['option3'],
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      new Radio(
                                        value: 3,
                                        groupValue: _radioValue1,
                                        onChanged: (value) {
                                          setState(() {
                                            _radioValue1 = value;
                                            if (answer ==
                                                snapshot
                                                    .data
                                                    .documents[position]
                                                    .data['option4']) {
                                              Fluttertoast.showToast(
                                                  msg: 'Correct !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                              correctScore++;
                                            } else {
                                              Fluttertoast.showToast(
                                                  msg: 'Try again !',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT);
                                            }
                                          });
                                        },
                                      ),
                                      Text(
                                        snapshot.data.documents[position]
                                            .data['option4'],
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              new Padding(
                                padding: new EdgeInsets.all(8.0),
                              ),
                            ]));
                      },
                      itemCount: snapshot.data.documents.length,

                      //itemCount: 1,
                    ),
                  ),
                  20.heightBox,
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton.icon(
                        color: Colors.red,
                          onPressed: validateAnswers,
                          icon: Icon(Icons.star),
                          label: Text("score").text.xl2.make()),
                      RaisedButton.icon(
                          color: Colors.red,
                          onPressed: () {
                            setState(() {
                              _radioValue1 = -1;
                              correctScore = 0;
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => QuizPage()));
                            });
                          },
                          icon: Icon(Icons.clear),
                          label: Text("reset").text.xl2.make())
                    ],
                  ),

                ],
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  void resetSelection() {
    correctScore = 0;
  }

  void validateAnswers() {
    if (_radioValue1 == -1) {
      Fluttertoast.showToast(
        textColor: Colors.white,
          backgroundColor: Colors.black,
          msg: 'Please select atleast one answer',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          textColor: Colors.white,
          backgroundColor: Colors.black,
          msg: 'Your total score is: $correctScore out of $len',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}
