import 'package:demo_rajan/repo/user_repo.dart';
import 'package:flutter/material.dart';

import 'login/login_page.dart';

class InfoPage extends StatefulWidget {
  final UserRepository _userRepository;

  InfoPage({Key key, @required UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  UserRepository get _userRepository => widget._userRepository;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    "Did You Know Me ?",
                    style: TextStyle(
                        fontFamily: 'RobotoBold',
                        fontSize: 30.0,
                        color: Colors.pink),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    "You Have To Authenticate",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen(
                              userRepository: _userRepository,
                            )));
                  },
                  child: Text(
                    "Authenticate Now",
                    style: TextStyle(fontFamily: "Roboto"),
                  ),
                ),
              )
            ]),
      ),
    ));
  }
}
