import 'package:flutter/material.dart';
import 'package:widgetspractice/MyStatelessWidget.dart';

class RounUp extends StatefulWidget {
  const RounUp({super.key});

  @override
  State<RounUp> createState() => _RounUpState();
}

class _RounUpState extends State<RounUp> {
  int number=0;

  void addUp() {
    setState(() {
      number++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const SizedBox(height:25),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '$number',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent.shade400),
            ),
          ),
        ),
        MyText('times!'),
        const SizedBox(height: 25),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 100),
                backgroundColor: Colors.cyanAccent.shade400,
                shape:
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(800))
                )
            ),
            onPressed: addUp,
            child: const Text('TAP ME!',
              style: TextStyle(color: Colors.teal, fontSize: 30, fontWeight: FontWeight.bold),))


      ],


    );


  }
}

