import 'package:flutter/material.dart';
import 'package:koolmind_task_app/widgets/coustom_banner.dart';
import 'package:koolmind_task_app/widgets/coustom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.005,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage("assets/images/splash_logo.png"),
                        height: 80,
                        width: 80,
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 20),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.3), width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(
                              'assets/icons/notification.png',
                              width: 20,
                            ),
                          ),
                          Positioned(
                              top: 10,
                              right: 20,
                              child: Container(
                                child: Center(
                                    child: Text(
                                  "1",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 15),
                                )),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.black, shape: BoxShape.circle),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CoustomBanner(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CoustomCard(icon: 'assets/icons/build.png', title: 'Build', des: 'Lorem ipsum dolor site amet', color: Colors.orange.shade300),
                      CoustomCard(icon: 'assets/icons/buy.png', title: 'Buy', des: 'Lorem ipsum dolor site amet', color: Colors.green.shade500,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CoustomCard(icon: 'assets/icons/service.png', title: 'Service', des: 'Lorem ipsum dolor site amet', color: Colors.cyanAccent.shade700,),
                      CoustomCard(icon: 'assets/icons/joint.png', title: 'Joint', des: 'Lorem ipsum dolor site amet', color: Colors.blue.shade500,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
