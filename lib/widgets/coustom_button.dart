import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {

  final Widget widget;
  final Color color;

  const CoustomButton({Key? key, required this.widget, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(
         shadows: [BoxShadow(blurRadius: 0.1,color: Colors.grey)],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          color: color),
      child:  widget
    );
  }
}
