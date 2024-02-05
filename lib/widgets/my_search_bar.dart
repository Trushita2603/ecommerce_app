import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;

  const MySearchBar(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.keyboardType});
  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, right: 10, left: 0, bottom: 0),
      child: TextField(
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.black87),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: Colors.white, width: 5, style: BorderStyle.solid),
          ),
        ),
      ),
    );
    ;
  }
}
