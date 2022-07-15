import 'package:flutter/material.dart';

class CoustomBanner extends StatelessWidget {
  const CoustomBanner({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCard(),
                  SizedBox(width: 10,),
                  buildCard(),
                  SizedBox(width: 10,),
                  buildCard(),
                ],
              ),
            ),
          );
  }
  Widget buildCard()=>Container(
    height: 250,
    width: 360,
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child:  Container(
            height: 25,
            width: 120,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange
            ),
            child: Text("Know More", style: TextStyle(fontWeight: FontWeight.w500),), alignment: Alignment.center,),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage("assets/images/banner.png")
      )
    ),
  );
}
