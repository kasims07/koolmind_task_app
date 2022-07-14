import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {
  final String text;

  const CoustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          color: Colors.blue),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
