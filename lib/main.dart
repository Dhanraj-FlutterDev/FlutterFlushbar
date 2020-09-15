import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlushbarApp());

class FlushbarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flush(),
    );
  }
}

class Flush extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flushbar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: (){
                Flushbar(
                  title: 'Bottom',
                  message: 'this bar is in bottom!.......',
                  leftBarIndicatorColor: Colors.red,
                  duration: Duration(seconds: 2),
                ).show(context);


              },child: Text('BOTTOM BAR'),
              ),
              RaisedButton(onPressed: (){
                Flushbar(
                  title: 'top',
                  message: 'this text is in top bar.......',
                  backgroundGradient: LinearGradient(colors: [Colors.redAccent,Colors.limeAccent]),
                  progressIndicatorBackgroundColor: Colors.green,
                  duration: Duration(seconds: 2),
                  showProgressIndicator: true,
                  flushbarPosition: FlushbarPosition.TOP,
                ).show(context);
              },child: Text('TOP'),
              ),
              RaisedButton(onPressed: (){
                Flushbar(
                  title: 'with rouund corners',
                  messageText: Text('this is for using custom text style',style: TextStyle(fontSize: 20.0),),
                  backgroundColor: Colors.lightBlue,
                  borderRadius: 8,
                  duration: Duration(seconds: 2),
                  reverseAnimationCurve: Curves.easeInOut,
                  forwardAnimationCurve: Curves.bounceInOut,
                ).show(context);
              },child: Text('FUNKY ONE'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

