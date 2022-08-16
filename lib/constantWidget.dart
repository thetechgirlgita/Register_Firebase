import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TextFieldResuable(String text, TextEditingController controller) {
  return TextField(
    decoration: InputDecoration(
      labelText: text,
    ),
    controller: controller,
  );
}

// to reuse button widget for clean code.
ButtonReusable(
  double padding,
  Color color,
  Function onTap,
  String text,
) {
  return Padding(
      padding: EdgeInsets.only(top: padding),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () {
            onTap();
          },
          // TODO : Check the user's credentials if it match then allow user to navigate to home page
          child: Container(
            alignment: Alignment.center,
            height: 45,
            width: 150,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                //fontFamily: 'Roboto',
              ),
              //textAlign: TextAlign.center,
            ),
          )));
}

ImageReusable(
  context,
) {
  return Padding(
    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.15),
    child: Container(
      height: 100,
      width: 200,
      child: Image.asset(
        'logo/assets/ehobby-logo.png',
        fit: BoxFit.fill,
      ),
    ),
  );
}

SignIn_RegisterOption(
    String text, String text2, Function onTap,
    ){
  return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Container(
          alignment: Alignment.center,
          child: Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                 Text(
          text,
                  style: TextStyle(
                    fontSize: 15,
                  ), //textAlign: TextAlign.center,
                ),
                GestureDetector(
                  child:  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight:
                      FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onTap: () {
                    onTap();
                    //Navigator.push(context, MaterialPageRoute(builder: (BuildContextcontext) => const RegisterPage()));
                  },
                )
              ])));
}
