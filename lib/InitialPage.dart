import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
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
  void dispose() {
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
                height: MediaQuery.of(context).size.height / 1,
                width: MediaQuery.of(context).size.width / 1.15,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.15),
                        child: Container(
                          height: 100,
                          width: 200,
                          child: Image.asset(
                            'logo/assets/ehobby-logo.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Form(
                          key: Fkey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                ),
                                controller: emailController,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                ),
                                controller: passwordController,
                                obscureText: true,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 50),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pinkAccent,

                                    ),

                                      onPressed: () {
                                        //login();
                                      },
                                      // TODO : Check the user's credentials if it match then allow user to navigate to home page
                                      child: Container(

                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 150,
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 15,
                                            //fontFamily: 'Roboto',
                                          ),
                                          //textAlign: TextAlign.center,
                                        ),
                                      ))),
                              Padding(padding: EdgeInsets.only(top: 180),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:  [
                                      const  Text("Don't have an account? ",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ), //textAlign: TextAlign.center,
                                  ),
                                      GestureDetector(
                                        child:  const Text('Register',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.pinkAccent,
                                          ),
                                        ),
                                        onTap: (){
                                         // return RegisterPage();
                                        },

                                      )
                                    ]
                                  )
                                )
                              ),

                            ],
                          )),
                    ]))));
  }


}
