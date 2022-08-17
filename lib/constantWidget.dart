import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TextFieldResuable(
    bool want,
    String text,
    String text2,
    //Function _errorText,
    TextEditingController controller) {
  return TextField(
    autofocus: want,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      labelText: text,
      hintText: text2,
      //errorText: _errorText.toString(),
    ),
    controller: controller,
  );
}

// to reuse button widget for clean code.
ButtonReusable(
  double padding,
  BuildContext context,
  Color color,
  Function onTap,
  String text,
) {
  return Padding(
      padding: EdgeInsets.only(top: padding),

      // TODO : Check the user's credentials if it match then allow user to navigate to home page
      child: Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 50),
              primary: color,
            ),
            onPressed: () {
              onTap();
            },
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
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
  String text,
  String text2,
  Function onTap,
) {
  return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Container(
          alignment: Alignment.center,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
              ), //textAlign: TextAlign.center,
            ),
            GestureDetector(
              child: Text(
                text2,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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

ReusableContainer(
  double Height,
  double Width,
  BuildContext context,

  Widget Widget,
) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Container(
      height: Height,
      width: Width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

          border: Border.all(color: Colors.pinkAccent)),
      child: Widget,
    ),
  );
}
//----------------------------------------------------------------------------------------------------

ReusablePage(BuildContext context, String text, String text2 ){
  return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(children:[
        ReusableContainer(200, MediaQuery.of(context).size.width, context, Container(
          child:Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,

            ),

            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.pinkAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(text2,

            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 40),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    minimumSize: Size(200, 50)
                ),
                onPressed: (){},
                child: Text("Buy Course")
            )

        )
      ]));
}