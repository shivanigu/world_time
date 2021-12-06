import 'dart:developer';


import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({ Key? key }) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  
@override

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('built state function run');
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(onPressed: () {
        setState(() {
          counter += 1;
        });
      },
      child: Text('counter is $counter'),
      ),
    );
  }
}