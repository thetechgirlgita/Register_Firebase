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
        child: const Text("Paino class"),
      ),
    );
  }
}
