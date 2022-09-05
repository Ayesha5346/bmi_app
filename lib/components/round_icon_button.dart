import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton(@required this.icon, @required this.onPressed);
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF222747),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
    );
  }
}
