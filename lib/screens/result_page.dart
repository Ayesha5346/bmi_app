import 'package:bmi_app/components/resuable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_card.dart';

class Result_page extends StatelessWidget {
  Result_page(@required this.BmiValue,@required this.BMIStatus,@required this.BmiMessage);
  final String BMIStatus ;
  final String BmiValue ;
  final String BmiMessage ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text("Your Result", style: knumberStyle),
            ),
            Expanded(
                child: ReusableCard(
                  colour: kactiveCardColour,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                       BMIStatus,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF22E67B),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        BmiValue.toString(),
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Normal Body Range:",
                        style: klabelTextStyle.copyWith(fontSize: 20.0),
                      ),
                      Text(
                        "18.5-25kg/m2",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        BmiMessage,
                        textAlign: TextAlign.center,
                        style: knumberStyle.copyWith(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        color: kinactiveCardColor,
                        height: 75.0,
                        width: 225.0,
                        child: Center(
                          child: Text(
                            "Save Result",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            BottomCard(() {
              Navigator.pop(context);
            }, "Re-calculate")
          ]),
    );
  }
}
