import 'package:flutter/material.dart';

const inactiveTextColor = Color(0xFF8D8E98);
const activeTextColor = Color(0xFFFFFFFF);

const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: widget.isActive ? inactiveTextColor : activeTextColor),
);


class iconContent extends StatefulWidget {
  final IconData icon;
  final String label;
  bool isActive = false;

  iconContent(
      {required this.icon, required this.label, required this.isActive});

  @override
  State<iconContent> createState() => _iconContentState();
}

class _iconContentState extends State<iconContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
        children: <Widget>[
          Icon(widget.icon, size: 80.0),
          const SizedBox(height: 15.0),
          Text(
            widget.label,
            style: lableTextStyle,
        ],
      ),
    );
  }
}
