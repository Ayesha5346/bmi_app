import 'package:flutter/material.dart';
import '../constants.dart';

class BottomCard extends StatelessWidget {
  BottomCard(@required this.onTap, @required  this.CardTitle);
  final VoidCallback onTap;
  final String CardTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(CardTitle,style: TextStyle(
            fontSize:20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),),
        ),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContHeight,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}


