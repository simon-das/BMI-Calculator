import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Function onTap;

  ReusableCard({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF111428),
        ),
      ),
    );
  }
}
