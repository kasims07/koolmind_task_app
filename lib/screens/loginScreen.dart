import 'package:flutter/material.dart';
import 'package:koolmind_task_app/widgets/coustom_button.dart';
import 'package:koolmind_task_app/widgets/coustom_textfeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  bool _isHidden = true;

  void _togalPasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  const Image(
                    image: AssetImage("assets/images/login_logo.png"),
                    height: 80,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Hello there, login to continue",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CoustomTextField(
                    hintText: "abcd@example.com",
                    textInputType: TextInputType.emailAddress,
                    controller: _emailcontroller,
                    isPass: false,
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CoustomTextField(
                    hintText: "password",
                    textInputType: TextInputType.emailAddress,
                    controller: _passwordcontroller,
                    isPass: _isHidden,
                    icon: InkWell(
                        onTap: _togalPasswordView,
                        child: _isHidden
                            ? const Icon(
                                Icons.visibility_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.grey,
                              )),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  CoustomButton(widget:  Text(
                    "Login",
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
                  ),),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "or sign in with",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  CoustomButton(widget: Expanded(
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/images/google_logo.png",), height: 40, width: 40,),
                        Text("Google", style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
