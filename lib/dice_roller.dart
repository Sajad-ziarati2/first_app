import 'package:flutter/material.dart';
import 'dart:math';

final photochanger = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var currentDiceroll = 1;
  void phototest() {
    setState(() {
      currentDiceroll = photochanger.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/photo/$currentDiceroll.png', height: 200),
        const SizedBox(height: 30),
        TextButton.icon(
          onPressed: phototest,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            backgroundColor: Colors.white,
          ),
          label: Text("change photo", style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 30),
        TextButton(onPressed: phototest,
        
         child: Text('Change Again')),
      ],
    );
  }
}
