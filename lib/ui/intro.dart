import 'package:demo_rajan/utils/value.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About",style: TextStyle(fontFamily: 'Roboto')),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text("${introTitle}",style: TextStyle(fontFamily: 'RobotoBold',fontSize: 20.0),)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                  child: Text('${firstIntro}',style: TextStyle(fontFamily: 'Roboto',fontSize: 15.0),)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                  child: Text('${secondIntro}',style: TextStyle(fontFamily: 'Roboto',fontSize: 15.0))),
            ],
          ),
        ),
      ),
    );
  }
}
