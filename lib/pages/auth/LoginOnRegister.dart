import 'package:ecommerce_app/pages/auth/login.dart';
import 'package:ecommerce_app/pages/auth/register.dart';
import 'package:flutter/material.dart';

class LoginOnRegister extends StatefulWidget {
  const LoginOnRegister({super.key});

  @override
  State<LoginOnRegister> createState() => _LoginOnRegisterState();
}

class _LoginOnRegisterState extends State<LoginOnRegister> {
  //initially, show  the login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(onTap: togglePages);
    } else {
      return Register(onTap: togglePages);
    }
  }
}
