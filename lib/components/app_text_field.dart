import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final controllerName;
  const AppTextField(
      {super.key, required this.hint, required this.controllerName});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerName,
      decoration: InputDecoration(
          hintText: hint,
          labelText: hint,
          labelStyle: TextStyle(color: Colors.white),
          border: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          filled: true,
          fillColor: Colors.white.withOpacity(0.5)),
    );
  }
}
