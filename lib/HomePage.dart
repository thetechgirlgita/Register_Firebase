import 'package:e_hobby_task/constantWidget.dart';
import 'package:flutter/material.dart';

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
        n
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child:
          ReusableContainer(250, context, Colors.red, (){}, "Helloe"),),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: (100 / 120),
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              ReusableContainer(
                  200, context, Colors.pinkAccent, (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PainoClass(),));
              },"Piano Classes"),
              ReusableContainer(
                  200, context, Colors.pinkAccent,(){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PainoClass(),));
    }, " Calligrapy Classes"),
              ReusableContainer(
                  200, context, Colors.pinkAccent,(){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PainoClass(),));}, "Guitar Classes"),
              ReusableContainer(
                  200, context, Colors.pinkAccent,(){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PainoClass(),));}, "Dance Classes")
            ],
          )
        ]),
      ),
    );
  }
}
