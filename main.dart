//Slider Code

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {


  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Slider",
            style: TextStyle(
                fontSize: _value,
                color: Colors.pink,
                fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 50,
          ),


          Slider(
              min: 10,
              max: 50,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                  // print(_value);
                });
              })
        ],
      ),
    );
  }
}
