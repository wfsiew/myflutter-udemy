import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  Widget buildImage(String s) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'images/$s',
            fit: BoxFit.contain,
            width: 200,
            height: 200,
          ),
        )
      ),
    );
  }

  Widget buildContent() {
    var ls = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildImage('food1.jpeg'),
        buildImage('food2.jpg'),
        buildImage('food3.jpeg'),
        buildImage('food4.jpeg'),
        buildImage('food5.jpeg'),
        buildImage('food6.jpg'),
        buildImage('food7.jpg'),
        buildImage('food8.jpg'),
        buildImage('food9.jpg'),
      ],
    );

    return SingleChildScrollView(
      child: Container(
      padding: const EdgeInsets.all(8),
        child: ls,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Art'),
        ),
        body: buildContent(),
      ),
    );
  }
}