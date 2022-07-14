import 'package:flutter/material.dart';
import 'package:koolmind_task_app/widgets/coustom_textfeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.1,),
                Image(image: AssetImage("assets/images/login_logo.png")),
                SizedBox(height: 10,),
                Text("Sign in", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("Hello there, login to continue"),
                SizedBox(height: size.height * 0.04,),
                Text("Email", style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                CoustomTextField(hintText: "abcd@example.com", textInputType: TextInputType.emailAddress, controller: _emailcontroller, isPass: false,),
                SizedBox(height: size.height * 0.04,),
                Text("Password", style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                CoustomTextField(hintText: "password", textInputType: TextInputType.emailAddress, controller: _passwordcontroller, isPass: true,),

              ],
            ),
          ),
          ],
      ),
    );
  }
}
