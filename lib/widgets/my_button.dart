import 'package:flutter/material.dart';

// class
class MyButton extends StatefulWidget {
  // Varibaler Declaration
  double? padding;
  final String? buttonName;

  // Constructor
  MyButton({super.key, this.padding, required this.buttonName});

  @override
  State<MyButton> createState() => _MyButtonState();
}

// class
class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.padding ??= 15),
      decoration: BoxDecoration(
          color: Colors.pink, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Text(
          "${widget.buttonName}",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
