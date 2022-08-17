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
        child: const Text("Calligraphy class"),
      ),
    );
  }
}
