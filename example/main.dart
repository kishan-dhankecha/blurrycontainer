import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://ranjeetrocky.000webhostapp.com/bg5.jpg'),
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.white,
                  height: 150,
                  width: 250,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.black,
                  height: 150,
                  width: 350,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.purple,
                  blur: 2,
                  height: 120,
                  width: 150,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.lightBlueAccent,
                  height: 180,
                  width: 180,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}