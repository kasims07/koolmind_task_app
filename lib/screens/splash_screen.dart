
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:koolmind_task_app/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;


  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation =  CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage("assets/images/background.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: animation,
                child: Image(
                  image: const AssetImage("assets/images/splash_logo.png"),
                  height: size.height * 0.5,
                  width: size.width * 0.6,
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
