import 'package:e_hobby_task/InitialPage.dart';
import 'package:e_hobby_task/constantWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CalligraphyClass.dart';
import 'DanceClass.dart';
import 'GuitarClass.dart';
import 'PianoClass.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //final GlobalKey<FormState> Fkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.logout_rounded),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return
                        Container(

                          height: 100,
                          width: 100,
                          child:AlertDialog(

                        title: Text("Alert!"),
                        content:
                            const Text("By clicking Yes you will log out from here. ",
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                        actions: [

                               ElevatedButton(
                            child: Text("Yes"),
                            onPressed: () {
                              FirebaseAuth.instance.signOut().then((value) =>
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              InitialPage())));
                            },
                          )
                        ],
                          ));
                    });
              }),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: ReusableContainer(
            200,
            400,
            context,
            // Image.asset('logo/assets/ehobby-logo.png'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => PianoClass(),));
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage(
                          "logo/assets/ehobby-logo.png",
                        ),
                        fit: BoxFit.contain)),
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableContainer(
                  250,
                  175,
                  context,
                  //  Image.asset('logo/assets/calligraphy.jpg'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext) => CalligraphyClass(),
                          ));
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "logo/assets/calligraphy.jpg",
                                ),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 200, 0, 5),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Text(
                              "Calligraphy Classes",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.pinkAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ),
                ),
                ReusableContainer(
                    250,
                    175,
                    context,
                    //  Image.asset('logo/assets/guitar.jpg'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(MediaQuery.of(context).size.width,
                            MediaQuery.of(context).size.height),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext) => GuitarClass(),
                            ));
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: new DecorationImage(
                                  image: new AssetImage(
                                    "logo/assets/guitar.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 200, 0, 5),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Text(
                                "Guitar Classes",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.pinkAccent,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                    ))
              ],
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ReusableContainer(
              250,
              175,
              context,
              //Image.asset('logo/assets/piano.jpg'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext) => PianoClass(),
                      ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage(
                            "logo/assets/piano.jpg",
                          ),
                          fit: BoxFit.fill)),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 200, 0, 5),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Text(
                          "Piano Classes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.pinkAccent,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              )),
          ReusableContainer(
            250,
            175,
            context,
            //Image.asset('logo/assets/dance.jpg'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) => DanceClass(),
                    ));
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage(
                          "logo/assets/dance.jpg",
                        ),
                        fit: BoxFit.fill)),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 210, 0, 5),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Text(
                        "Dance Classes",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.pinkAccent,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ),
          )
        ])
      ])),
    );
  }
}
