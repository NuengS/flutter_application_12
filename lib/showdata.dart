import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
  final String fname;
  final String lname;
  final String address;
  final String pastal;
  final String phone;
  final String recievedate;

  ShowData(this.fname, this.lname, this.address, this.pastal, this.phone,
      this.recievedate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            "HomeWork",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "Your Data!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              "Your Name : $fname $lname \nYour address : $address \nYour pastal : $pastal \nYour phone : $phone \n $recievedate ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
