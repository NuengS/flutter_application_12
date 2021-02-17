import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_12/inputform.dart';
import 'inputform.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => InputForm(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: Image.asset('images/tenor.gif'),
          ),
        ),
      ]),
    );
  }
}
