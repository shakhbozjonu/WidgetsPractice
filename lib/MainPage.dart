import 'package:flutter/material.dart';
import 'package:widgetspractice/MyStatelessWidget.dart';
import 'MyStatefulWidget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My Widget Practice',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Widgets Practice',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
          backgroundColor: Colors.cyanAccent.shade400,
        ),

        //STATELESS WIDGET
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              MyText('Greetings from Shakhboz!'),

              SizedBox(height: 25),
              MyText('You have tapped'),

              //STATEFUL WIDGET CALL
              RounUp(),


            ],
          ),
        ),
        backgroundColor: Colors.teal,
      ),


    );//overlays the entire screen
  }
}