import 'package:flutter/material.dart';

class GuitarClass extends StatefulWidget {
  const GuitarClass({Key? key}) : super(key: key);

  @override
  _GuitarClassState createState() => _GuitarClassState();
}

class _GuitarClassState extends State<GuitarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guitar Class",
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: const Text("Guitar class"),
      ),
    );
  }
}
