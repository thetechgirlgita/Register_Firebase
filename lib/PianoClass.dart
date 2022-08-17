import 'package:e_hobby_task/constantWidget.dart';
import 'package:flutter/material.dart';

class PianoClass extends StatefulWidget {
  const PianoClass({Key? key}) : super(key: key);

  @override
  _PianoClassState createState() => _PianoClassState();
}

class _PianoClassState extends State<PianoClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Piano Class",
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: ReusablePage(context, "Piano Class",
            "Adults all over the world are turning to the keys."
            " They’re realizing that lessons are not for children only."
                "It’s true that piano lessons benefit young children, but they benefit grown-ups as well."
                " In fact, they may advantage grown-ups even more.")
      ),
    );
  }
}
