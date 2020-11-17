import 'package:flutter/material.dart';

class GenderContent extends StatelessWidget {
  final Color contentColor;
  final String label;
  final IconData icon;

  GenderContent(
      {@required this.contentColor, @required this.label, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: contentColor,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 22, color: contentColor),
        ),
      ],
    );
  }
}
