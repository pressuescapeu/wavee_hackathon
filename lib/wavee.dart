import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'wavee_tracker.dart';

class WaveeMain extends StatelessWidget {
  const WaveeMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HabitMainPage(),
    );
  }
}
