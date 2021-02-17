import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_12/showdata.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String errmsg = '';
  final _formkey = GlobalKey<FormState>();
  void input() {
    FocusScope.of(context).unfocus();
    errmsg = '';
    saveData();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ShowData(
                _firstNameController.text,
                _lastNameController.text,
                _addressController.text,
                _postalController.text,
                _phoneController.text,
                _recieveDateController.text)));
  }

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _postalController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _recieveDateController = TextEditingController();

  void saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("fname", _firstNameController.text);
    prefs.setString("laname", _lastNameController.text);
    prefs.setString("address", _addressController.text);
    prefs.setString("postal", _postalController.text);
    prefs.setString("phone", _phoneController.text);
    prefs.setString("recievedate", _recieveDateController.text);
  }

  TextFormField getFirstName() {
    return TextFormField(
      controller: _firstNameController,
      decoration: InputDecoration(
        labelText: "FistName",
        hintText: "Enter your FistName",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getLastName() {
    return TextFormField(
      controller: _lastNameController,
      decoration: InputDecoration(
        labelText: "LastName",
        hintText: "Enter your LastName",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getAddress() {
    return TextFormField(
      controller: _addressController,
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getPostal() {
    return TextFormField(
      controller: _postalController,
      decoration: InputDecoration(
        labelText: "Postal",
        hintText: "Enter your Postal",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getPhone() {
    return TextFormField(
      controller: _phoneController,
      decoration: InputDecoration(
        labelText: "Phone",
        hintText: "Enter your Phone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getRecieveDate() {
    return TextFormField(
      controller: _recieveDateController,
      decoration: InputDecoration(
        labelText: "RecieveDate",
        hintText: "Enter your RecieveDate",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  SizedBox getInputButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.white),
        ),
        onPressed: input,
        child: Text(
          "Confirm",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            getFirstName(),
            SizedBox(height: 10),
            getLastName(),
            SizedBox(height: 10),
            getAddress(),
            SizedBox(height: 10),
            getPostal(),
            SizedBox(height: 10),
            getPhone(),
            SizedBox(height: 10),
            getRecieveDate(),
            SizedBox(height: 10),
            getInputButton(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
