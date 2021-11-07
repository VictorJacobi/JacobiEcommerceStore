import 'package:flutter/material.dart';

class ReUsedField extends StatelessWidget {
  ReUsedField({this.hintText,this.labelText,this.onChanged});
  final String labelText;
  final String hintText;
  final Function onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        TextField(
          onChanged: onChanged,
          style: TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: Color(0xFFF7F8FB),
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
