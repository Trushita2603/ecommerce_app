import 'package:ecommerce_app/pages/auth/LoginOnRegister.dart';
import 'package:ecommerce_app/pages/auth/login.dart';
import 'package:ecommerce_app/pages/auth/register.dart';
import 'package:ecommerce_app/pages/home/home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
