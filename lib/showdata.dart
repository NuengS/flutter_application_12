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
        backgroundColor: Colors.blueGrey[700],
        title: Text("Input Project"),
      ),
      body: Container(
        color: Colors.blueGrey[200],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              "$fname $lname $address $pastal $phone $recievedate ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
