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
        child:
        Align(
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
                              TextFieldResuable("Email",  emailController, ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFieldResuable("Password",  passwordController, ),

                              ButtonReusable(50, Colors.pinkAccent, (){}, "Login"),
                        Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Don't have an account? ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ), //textAlign: TextAlign.center,
                                      ),
                                      GestureDetector(
                                        child:  const Text(
                                          "Register",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pinkAccent,
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegisterPage()));
                                        },
                                      )
                                    ]))),
                            ],
                          )),
                    ])))));
  }
}
