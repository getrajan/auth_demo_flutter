import 'package:demo_rajan/repo/user_repo.dart';
import 'package:demo_rajan/ui/info.dart';
import 'package:demo_rajan/ui/login/login_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  final UserRepository _userRepository;

  LandingPage({Key key, @required UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  UserRepository get _userRepository => widget._userRepository;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(">>>>>>>>>>${_userRepository}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(
                'images/Profile.png',
                height: 500.0,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Welcome To My Demo App",
                    style: TextStyle(fontSize: 30.0, fontFamily: 'RobotoBold',color: Colors.red),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("Flutter Application with Bloc Pattern",style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 15.0
                  ),)),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => InfoPage(userRepository: _userRepository,)));
                },
                color: Colors.pink,
                child: Text(
                  "Next",
                  style: TextStyle(fontFamily: 'Roboto', color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
