import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:velocity_x/velocity_x.dart';


class VikingVocabCards extends StatefulWidget {


  @override
  _VikingVocabCardsState createState() => _VikingVocabCardsState();
}

class _VikingVocabCardsState extends State<VikingVocabCards> {
  final Ref = Firestore.instance.collection("viking");
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Viking Cards"),
        centerTitle: true,


      ),
      backgroundColor: Colors.white,

      body: StreamBuilder(
        stream: Ref.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return PageView.builder(
              controller: controller,
              itemBuilder: (context, position) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      30.heightBox,
                      Image.network(snapshot.data.documents[position].data['image'],height: 180,fit: BoxFit.fitHeight,),
                      30.heightBox,
                      InkWell(
                          onTap: ()=>speak('${snapshot.data.documents[position].data['name']}'),
                          child: Text("Viking "+ snapshot.data.documents[position].data['name']).text.xl4.semiBold.fontFamily('Heorot').makeCentered()),
                      30.heightBox,
                      Expanded(
                        child: VxBox(
                          child: Column(
                            children: [

                              SizedBox(height: 30.0,),
                              Text(snapshot.data.documents[position].data['description']).text.xl.white.center.make(),
                            ],
                          ),
                        ).red600.p4.make(),
                      ),


                    ],
                  ),

                );
              },
              itemCount: snapshot.data.documents.length,
            );
          }
          else {
            return CircularProgressIndicator();
          }
        }
      ),
    );
  }
}