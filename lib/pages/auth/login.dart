import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("login"),
        ),
        body: Container(
            child: Center(
          child: Text("Login Page"),
        )),
      ),
    );
  }
}
