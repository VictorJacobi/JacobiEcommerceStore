import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import'package:clay_containers/clay_containers.dart';
import 'package:e_commerce_app/Utilities/MyTextField.dart';
import 'package:e_commerce_app/Utilities/ReUsedButton.dart';
import 'SignUpScreen.dart';

Expanded lineRule = Expanded(
  child: ClayContainer(
    height: 2,
    spread: 0,
    color: Color(0xFFD8D8D8),
  ),);

class LoginScreen extends StatelessWidget {
  static String id ='/loginScreen';
  @override
  Widget build(BuildContext context) {
    return MyLoginScreen();
  }
}
class MyLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  height: 80,
                  image: AssetImage('images/bardeal_logo.jpg'),
                ),
                Text(
                  'Login to Bardeal',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF001833),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFD6162),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCircularIcon(widget: Text('f',style: TextStyle(color: Colors.white),),colour: Color(0xFF3B5999),onPressed: (){

                    },),
                    MyCircularIcon(widget: Text('G+',style: TextStyle(color: Colors.white),),colour: Color(0xFFFD6162),onPressed: (){

                    },),
                  ],
                ),
                Row(
                  children: [
                    lineRule,
                    Text(
                      'Or',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFD8D8D8),
                      ),
                    ),
                   lineRule,
                  ],
                ),
                ReUsedField(labelText: 'Email',hintText: 'name@gmail.com',),//Put the onChanged callback you've formally coded which calls back value
                ReUsedField(labelText: 'Password',hintText: '************',),
                MyReUsedButton(
                  requiredText: 'Log In',
                  onPressed: (){
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
              ],
            ),
          ),
      ),
    );
  }
}
class MyCircularIcon extends StatelessWidget {
  MyCircularIcon({this.widget,this.colour,this.onPressed});
  final Widget widget;
  final Color colour;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 50,
        width: 50,
        child: Center(
          child: widget,
        ),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

