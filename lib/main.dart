import 'package:flutter/material.dart';
import 'storyBrain.dart';

StoryBrain storyBrain = StoryBrain();

void main() => runApp(DestiniApp());

class DestiniApp extends StatefulWidget {
  @override
  _DestiniAppState createState() => _DestiniAppState();
}

class _DestiniAppState extends State<DestiniApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(245, 0, 87, 1),
            title: Text(
              "Story",
              textAlign: TextAlign.center,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/appbackgrou.jpg"),
                  fit: BoxFit.cover
              ),
            ),

            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
            constraints: BoxConstraints.expand(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      storyBrain.getStory(),
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    color: Color.fromRGBO(245, 0, 87, 1),
                    child: Text(
                      storyBrain.getChoice1(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    color: Color.fromRGBO(108, 99, 255, 1),
                    child: Text(
                      storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
