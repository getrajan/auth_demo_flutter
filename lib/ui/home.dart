import 'package:demo_rajan/blocs/auth/auth_bloc.dart';
import 'package:demo_rajan/blocs/auth/auth_event.dart';
import 'package:demo_rajan/ui/intro.dart';
import 'package:demo_rajan/utils/value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
//  final String name;
//  HomeScreen({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(fontFamily: 'Roboto')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('images/Profile.png'),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("${aboutTitle}",style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'RobotoBold',
                  fontSize: 25.0
                ),)),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("${aboutContent}",style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
              ),),
            ),
//          Center(child: Text('Welcome $name!')),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: RaisedButton(
                color: Colors.red,
                  onPressed: (){
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      AuthenticationLoggedOut(),
                    );
                  },
                  child: Text("Logout",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      fontFamily: 'Roboto'
                  ),)),
            ),
            Expanded(
              child: RaisedButton(
                color: Colors.green,
                  onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>IntroPage()
                  ));
                  },
                  child: Text("Next",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    fontFamily: 'Roboto'
                  ),)),
            )
          ],
        ),
      ),
    );
  }
}