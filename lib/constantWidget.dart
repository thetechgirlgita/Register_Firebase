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
  Function next,
  String text,
) {
  return Padding(
      padding: EdgeInsets.only(top: padding),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () {
            //login();
            next;
          },
          // TODO : Check the user's credentials if it match then allow user to navigate to home page
          child: Container(
            alignment: Alignment.center,
            height: 45,
            width: 150,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                //fontFamily: 'Roboto',
              ),
              //textAlign: TextAlign.center,
            ),
          )));
}

ImageReusable(context, ){
  return Padding(
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
  );
}



