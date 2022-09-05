import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';
class GenderCard extends StatelessWidget {

  GenderCard ({ required this.genderIcon, required this.genderTitle});
  final IconData genderIcon;
  final String genderTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget> [
        Icon(
          genderIcon,
          size: 50.0,
        ),
        SizedBox( height: 15.0,),
        Text(genderTitle, style: klabelTextStyle )
      ],
    );
  }
}