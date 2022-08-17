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
        child: const Text("Dance class"),
      ),
    );
  }
}
