import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loading.dart';

void main() {
  runApp(InputDate());
}

class InputDate extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return MaterialApp(
      title: 'Input demo',
      home: Loading(),
    );
  }
}
