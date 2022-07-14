import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final bool isPass;
  final TextEditingController controller;

  const CoustomTextField(
      {Key? key,
      required this.hintText,
      required this.textInputType,
      required this.isPass,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = UnderlineInputBorder(

        borderSide: BorderSide(color: Colors.grey));
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          fillColor: Colors.white54,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
