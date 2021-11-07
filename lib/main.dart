import 'package:flutter/material.dart';
import'Screens/Welcome_Screen.dart';
import 'package:provider/provider.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/HomeScreen.dart';
import'Screens/SignUpScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (context)=>Data(),
      child: MaterialApp(
        routes: {
          LoginScreen.id:(context)=>LoginScreen(),
          WelcomeScreen.id:(context)=>WelcomeScreen(),
          HomeScreen.id:(context)=>HomeScreen(),
          SignUpScreen.id:(context)=>SignUpScreen(),
        },
        theme: ThemeData(
        ),
        initialRoute: WelcomeScreen.id,
      ),
    );
  }
}
