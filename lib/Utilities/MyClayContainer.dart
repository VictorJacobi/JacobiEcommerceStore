import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';


class MyClayContainer extends StatelessWidget {
  MyClayContainer({this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return  ClayContainer(
      height: 12,
      width: 12,
      spread: 0,
      color: colour,
      borderRadius: 10,
    );
  }
}