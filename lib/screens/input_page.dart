import 'bmi_calculator.dart';
import 'result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/resuable_card.dart';
import 'package:bmi_app/components/gender_card.dart';
import '../constants.dart';
import '../components/bottom_card.dart';
import '../components/round_icon_button.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double _currentSliderValue = 120.0;
  GenderType? selectedGender;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      Press: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      colour: selectedGender == GenderType.male
                          ? kactiveCardColour
                          : kinactiveCardColor,
                      childCard: GenderCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderTitle: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Press: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      colour: selectedGender == GenderType.female
                          ? kactiveCardColour
                          : kinactiveCardColor,
                      childCard: GenderCard(
                        genderIcon: FontAwesomeIcons.venus,
                        genderTitle: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kactiveCardColour,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: klabelTextStyle,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            _currentSliderValue.round().toString(),
                            style: knumberStyle,
                          ),
                          Text(
                            "cm",
                            style: klabelTextStyle,
                          )
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                      ),
                      child: Slider(
                        value: _currentSliderValue,
                        min: 120.0,
                        max: 300.0,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kactiveCardColour,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: knumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              }),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kactiveCardColour,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Age",
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: knumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age = age - 1;
                                });
                              }),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age = age + 1;
                                });
                              })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomCard(() {
             setState(() {
               BmiCalc Calculator = BmiCalc(_currentSliderValue.toInt(), weight);
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => Result_page(Calculator.Calculator(),
                     Calculator.StatusUpdate(),Calculator.Message()
                   ),
                 ),
               );
             });
            }, "Calculate")
          ],
        ));
  }
}
