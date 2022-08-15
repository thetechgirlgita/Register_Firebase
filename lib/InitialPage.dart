import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final GlobalKey<FormState> Fkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 1.2,

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Form(
                          key: Fkey,
                          child:
                          Column(
                              children:
                              [
                                TextFormField(
                                  decoration:  const InputDecoration(
                                    hintText: 'Email',
                                  ),
                                  validator: (String? value){
                                    if(value == null || value.isEmpty){
                                      return 'Email please';
                                    }
                                    return null;
                                  }

                      ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration:  const InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (String? value){
                      if(value == null || value.isEmpty){
                        return 'Email please';
                      }
                      return null;
                    },),
                              ]))
                    ]))));
  }
}
