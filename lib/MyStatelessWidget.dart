import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
        style: TextStyle(color: Colors.cyanAccent.shade400,
            fontSize: 25,
            fontWeight: FontWeight.normal),),
    );
  }
}