import 'package:e_hobby_task/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'constantWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'RegisterPage.dart';

class InitialPage extends StatefulWidget {
  InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> Fkey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: MediaQuery.of(context).size.height / 1,
                    width: MediaQuery.of(context).size.width / 1.15,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageReusable(context),
                          Form(
                              key: Fkey,
                              child: Column(
                                children: [
                                  TextFieldResuable(
                                    "Email",
                                    emailController,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextFieldResuable(
                                    "Password",
                                    passwordController,
                                  ),
                                  ButtonReusable(50, Colors.pinkAccent, () {
                                    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then(
                                            (value) =>
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                HomePage())
                                    ).onError((error, stackTrace) =>
                                        print("Error ${error.toString()}"),
                                    ));
                                  }, "Login"),




                                  SignIn_RegisterOption("Don't have an account? ", "Register", (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContextcontext) => const RegisterPage()));
                                  })
                                ],
                              )),
                        ])))));
  }
}
