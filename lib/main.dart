import 'package:demo_rajan/repo/user_repo.dart';
import 'package:demo_rajan/ui/home.dart';
import 'package:demo_rajan/ui/landing.dart';
import 'package:demo_rajan/ui/login/login_page.dart';
import 'package:demo_rajan/ui/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/auth/auth_bloc.dart';
import 'blocs/auth/auth_event.dart';
import 'blocs/auth/auth_state.dart';
import 'blocs/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(
        userRepository: userRepository,
      )..add(AuthenticationStarted()),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationFailure) {
//            return LoginScreen(userRepository: _userRepository);
            return LandingPage(
              userRepository: _userRepository,
            );
          }
          if (state is AuthenticationSuccess) {
//            return HomeScreen(name: state.displayName);
          return HomeScreen();
          }
          if (state is AuthenticationInitial) {
            return SplashScreen();
          }
          return SplashScreen();
        },
      ),
    );
  }
}
