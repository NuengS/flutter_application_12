import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'showdata.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String errmsg = '';
  final _formkey = GlobalKey<FormState>();

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _postalController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _recieveDateController = TextEditingController();

  void input() {
    FocusScope.of(context).unfocus();
    bool passValidate = _formkey.currentState.validate();
    errmsg = '';
    if (passValidate) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShowData(
              _firstNameController.text,
              _lastNameController.text,
              _addressController.text,
              _postalController.text,
              _phoneController.text,
              _recieveDateController.text),
        ),
      );
    }
  }

  TextFormField getFirstName() {
    return TextFormField(
      controller: _firstNameController,
      validator: (String inputFname) {
        if (inputFname.isEmpty) {
          return "Please input First Name";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
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
      validator: (String inputLname) {
        if (inputLname.isEmpty) {
          return "Please input Last Name";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
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
      validator: (String inputAddress) {
        if (inputAddress.isEmpty) {
          return "Please input Address";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
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
      maxLength: 5,
      inputFormatters: [
        // ignore: deprecated_member_use
        WhitelistingTextInputFormatter(RegExp("[0-9]"))
      ],
      validator: (String inputPostal) {
        if (inputPostal.isEmpty) {
          return "Please input Postal";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
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
      maxLength: 10,
      inputFormatters: [
        // ignore: deprecated_member_use
        WhitelistingTextInputFormatter(RegExp("[0-9]"))
      ],
      validator: (String inputPhone) {
        if (inputPhone.isEmpty) {
          return "Please input Phone";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
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
      validator: (String inputRecieveDate) {
        if (inputRecieveDate.isEmpty) {
          return "Please input RecieveDate";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "RecieveDate",
        hintText: "วว/ดด/ปปปป",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  SizedBox getInputButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.white),
        ),
        child: Text(
          "Confirm",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        onPressed: input,
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
