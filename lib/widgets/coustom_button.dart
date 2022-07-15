import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {

  final Widget widget;

  const CoustomButton({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          color: Colors.green.shade700),
      child:  widget
    );
  }
}
