import 'package:flutter/material.dart';

class CoustomCard extends StatelessWidget {
  final String title;
  final String des;
  final String icon;
  final Color color;
  const CoustomCard({Key? key, required this.color, required this.title, required this.des, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Image(image: AssetImage(icon), height: 40, width: 40,),
            SizedBox(height: 10,),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
            SizedBox(height: 10,),
            Expanded(child: Text(des, style: TextStyle(fontSize: 15, color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
