import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContent extends StatelessWidget {
  final String label;
  final Function onTap;

  BottomContent({this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        color: Color(0xFFEB1555),
        height: 80,
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: kLargeLabelTextStyle,
          ),
        ),
      ),
    );
  }
}
