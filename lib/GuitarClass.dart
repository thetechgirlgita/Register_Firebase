import 'package:e_hobby_task/constantWidget.dart';
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
        child: ReusablePage(context, "Guitar Classes",
            "If you’re interested in teaching your child a musical instrument, "
                "the guitar is a great choice. In addition to being fun to play, it offers variety when it comes to playing styles, "
                "musical genres and song choice. ",),
      ),
    );
  }
}
