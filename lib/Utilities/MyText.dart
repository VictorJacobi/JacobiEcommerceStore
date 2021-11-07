import 'package:flutter/material.dart';

class MyPlainText extends StatelessWidget {
  MyPlainText({this.plain});
  final String plain;
  @override
  Widget build(BuildContext context) {
    return Text(
      plain,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFFDADADA),
        fontSize: 18,
      ),
    );
  }
}
class MyHeaderText extends StatelessWidget {
  MyHeaderText({this.header});
  final String header;
  @override
  Widget build(BuildContext context) {
    return  Text(
      header,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

