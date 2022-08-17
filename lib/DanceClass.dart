import 'package:e_hobby_task/constantWidget.dart';
import 'package:flutter/material.dart';

class DanceClass extends StatefulWidget {
  const DanceClass({Key? key}) : super(key: key);

  @override
  _DanceClassState createState() => _DanceClassState();
}

class _DanceClassState extends State<DanceClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dance Class",
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: ReusablePage(context, "Dance Classes",
            "Dance has always been a part of human culture, "
                "rituals and celebrations. "
                "Today, most dancing is about recreation and self-expression, "
            "although it can also be done as a competitive activity.")
      ),
    );
  }
}
