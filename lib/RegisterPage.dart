import 'package:e_hobby_task/InitialPage.dart';
import 'package:e_hobby_task/constantWidget.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'constantWidget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  _RegisterPageState createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> Fkey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:
      Align(
        alignment: Alignment.center,
        child:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 1.2,
        child:

          Column(
             mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                ImageReusable(context),
                Form(
                  key : Fkey,
                  child:
                      Column(
                        children:[
                  TextFieldResuable("Email",  emailController, ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldResuable("Password",  passwordController, ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFieldResuable("Confirm Password",  confirmPasswordController, ),
                        ])
                ),
                ButtonReusable(70, Colors.pinkAccent, (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContextcontext) => InitialPage()));
                }, "Register"),
                SignIn_RegisterOption("Have an account? ", "SignIn", (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContextcontext) => InitialPage()));
                })
            ]
          )
      ),)),
    );
  }
}
