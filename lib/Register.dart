import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:shield/Homepage.dart';


class Register extends StatefulWidget {
Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _mail = new TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Form(
      key: formKey,
        child: Center(
          child: ModalProgressHUD(
            inAsyncCall: showProgress,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Registration Page",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  keyboardType:TextInputType.number,
                  controller: _mail,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the phone number";
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: "Enter your phone number",

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the password";
                    }
                    return null;
                  },
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  elevation: 5,
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(32.0),
                  child: MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              MyHomePage(name: _mail.text)),
                        );
                      }

                    },
                    minWidth: 200.0,
                    height: 45.0,
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }}