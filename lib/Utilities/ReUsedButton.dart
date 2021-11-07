import 'package:flutter/material.dart';

class MyReUsedButton extends StatelessWidget {
  MyReUsedButton({this.onPressed,this.requiredText});
  final String requiredText;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            requiredText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            //textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFFF7465),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
