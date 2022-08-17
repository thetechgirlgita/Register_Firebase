import 'package:e_hobby_task/constantWidget.dart';
import 'package:flutter/material.dart';
import 'GuitarClass.dart';
import 'PianoClass.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: ReusableContainer(
            200,
            400,
            context,
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
              child: const Text(
                "ShowCase",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pinkAccent,
                ),
                textAlign: TextAlign.center,
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
                    child: const Text(
                      "Calligraphy Classes",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pinkAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ReusableContainer(
                  250,
                  175,
                  context,
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
                    child: const Text(
                      "Guitar Classes",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pinkAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ReusableContainer(
            250,
            175,
            context,
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
              child: const Text(
                "Piano Classes",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pinkAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ReusableContainer(
            250,
            175,
            context,
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
              child: const Text(
                "Dance Classes",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pinkAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ])
      ])),
    );
  }
}
