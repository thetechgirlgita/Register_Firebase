import 'package:e_hobby_task/constantWidget.dart';
import "package:flutter/material.dart";

class CalligraphyClass extends StatefulWidget {
  const CalligraphyClass({Key? key}) : super(key: key);

  @override
  _CalligraphyClassState createState() => _CalligraphyClassState();
}

class _CalligraphyClassState extends State<CalligraphyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calligraphy  Class",
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: ReusablePage(context, "Calligraphy",
            "In order to do calligraphy, you need to know how to"
                " use the pen to create each stroke of the letter. This activates the motor areas of the brain,"
            " which include the cerebral cortex, the basal ganglia, and cerebellum ")
      ),
    );
  }
}
