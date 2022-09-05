import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({  required this.colour,required this.childCard,  this.Press});

  final Color colour;
  final Widget childCard;
  final VoidCallback? Press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Press,
      child: Container(
        child: childCard,
        height: 200,
        width: 350,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
