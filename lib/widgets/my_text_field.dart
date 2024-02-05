import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextField extends StatefulWidget {
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.keyboardType});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
                color: Colors.white, width: 5, style: BorderStyle.solid),
          )),
    );
  }
}

class MyTextFieldRegister extends StatefulWidget {
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  const MyTextFieldRegister(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.keyboardType});

  @override
  State<MyTextFieldRegister> createState() => _MyTextFieldRegisterState();
}

class _MyTextFieldRegisterState extends State<MyTextFieldRegister> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
              color: Colors.white, width: 5, style: BorderStyle.solid),
        ),
      ),
    );
  }
}
