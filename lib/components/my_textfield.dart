import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obsuretext;
  const MyTextField({super.key,
    required this.controller,
    required this.hinttext,
    required this.obsuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsuretext  ,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
        ),
      ),
    );
  }
}
