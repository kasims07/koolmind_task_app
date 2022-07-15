import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:koolmind_task_app/screens/main_screen.dart';
import 'package:koolmind_task_app/utils/globalveriable.dart';
import 'package:koolmind_task_app/widgets/coustom_button.dart';
import 'package:koolmind_task_app/widgets/coustom_textfeild.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  bool _isHidden = true;
  bool _isloading = false;

  void _togalPasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void login(String email, String password) async {

    setState(() {
      if(_emailcontroller.text.isEmpty || _passwordcontroller.text.isEmpty){
        _isloading = false;
        showSnackBar("Pls Enter valid information", context);
      }else {
        _isloading = true;
      }
    });
    try {
      http.Response response = await http.post(
          Uri.parse("http://koolmindapps.com/khomes/api/v1/auth/login"),
          body: {
            'email': email,
            'password': password,
            'device': "android",
            'device_token': "abc123"
          }
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        Navigator.pushNamed(context, MainScreen.routName);
      }
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
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
                  InkWell(
                    onTap: (){login(_emailcontroller.text.toString(), _passwordcontroller.text.toString());},
                    child: _isloading ? const Center(
                      child: CircularProgressIndicator(),
                    ) : CoustomButton(
                      color: Colors.green.shade700,
                      widget: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "or sign in with",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoustomButton(
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage(
                            "assets/images/google_logo.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                  SizedBox(height: size.height * 0.07,),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: const [
                        Text("Create account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                        SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_right_sharp)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
