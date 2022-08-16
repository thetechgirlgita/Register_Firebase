import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2,
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.15,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Form(
                          key: Fkey,
                          child: Column(children: [
                            TextFormField(

                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                ),

                                validator: (String? email) {
                                  if (email == null || email.isEmpty) {
                                    return 'Email please';
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Password',
                              ),
                              validator: (String? password) {
                                if (password == null || password.isEmpty) {
                                  return 'Email please';
                                }
                                return null;
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child:
                            ElevatedButton(
                                onPressed: (){
                                  login();
                                },
                                // TODO : Check the user's credentials if it match then allow user to navigate to home page
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 150,
                                  child: const Text("Login",
                                    style: TextStyle(
                                      fontSize: 15,
                                      //fontFamily: 'Roboto',
                                    ),
                                    //textAlign: TextAlign.center,
                                  )
                                  ,
                                )))
                          ],

                          )),


                    ]))));}
    Future login () async {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
         email: emailController.text.trim(),
         password: passwordController.text.trim(),
     );

  }

}

