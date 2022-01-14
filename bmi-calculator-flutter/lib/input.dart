import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusabale_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';
// color can be in container directly but as we are using box decoration
// property for acheiving curvature at the corners then only we have to
// put color in the box decoration widget

// class InputPage extends StatefulWidget {
//   @override
//   _InputPageState createState() => _InputPageState();
// }
//
// class _InputPageState extends State<InputPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BMI CALCULATOR'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: Color(0xFF1D1E33),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: Color(0xFF1D1E33),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: Color(0xFF1D1E33),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: Color(0xFF1D1E33),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: Color(0xFF1D1E33),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// we see that the same container is being used again an agian making the code
// lengthy and messy to make it DRY ( do not repeatable)
// so select repeated widget go to flutter outine and click on
// extract widget and give it a name reusablecard here
/*
const BottomContainerHeight = 80.0;
const ActiveCardColour = Color(0xFF1D1E33);
const InactiveCardColour = Color(0xFF111328);
const BottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = InactiveCardColour;
  Color femaleCardColour= InactiveCardColour;
  void updateColour(int gender)
  {
    if(gender==1) //  1 for male 2 for female
      {
        if(maleCardColour==ActiveCardColour) //logic for activating only female or a male active card at a single tive
          maleCardColour=InactiveCardColour;
        else {
          maleCardColour = ActiveCardColour;
          femaleCardColour = InactiveCardColour;
        }
      }
    else
      {
        if(femaleCardColour==ActiveCardColour)
          femaleCardColour= InactiveCardColour;
        else {
          femaleCardColour = ActiveCardColour;
          maleCardColour = InactiveCardColour;
        }
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(

                  child: GestureDetector( //we can make use of textbutton too but it will change style of card
                    onTap: (){ // good alternative for on pressed for buttons wihtout changing design
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      CardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: ReusableCard(
                      colour:  femaleCardColour,
                      CardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: ActiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: ActiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: ActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: BottomContainerHeight,
            width: double.infinity,
            color: InactiveCardColour,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
*/
// we have made our own custom made widgets some of them even having arguments
// Widgets describe what their view should look like
// given their current configuration and state.
// VVVVIMP: to make our code easy to read, understand ,fixand modify we seperated things
// in multiple dart files

//ENUM IN DART
// enum Color {
//   red, green, blue
// }
//and here Color[0]is red and so on
// it is an alternative to when we se no's to particular value i.e 1=male,2=female
// when we deal with more data it becomes confusing and hard to understand for any other programmer

// Enumerated types, often called enumerations or enums, are a special kind of class used
// to represent a fixed number of constant values.
// Enums most often contain a group of related constants where the value of its first member
// is 0 and increases by one for each constant in the enum (by default). You can assign a
// value to an enum member and the value of the next member will be one higher.
//  VS ARRAY
//even though enum and array may feel the same but they are actually different
// An array is a block of contiguous memory that can be of any variable type: char,
// int, float, etc and its values can be changed throughout your program. If
// uninitialized the array will contain garbage values, unlike the enum.

/*
const BottomContainerHeight = 80.0;
const ActiveCardColour = Color(0xFF1D1E33);
const InactiveCardColour = Color(0xFF111328);
const BottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
enum Gender {
  male,
  female,
}
class _InputPageState extends State<InputPage> {
  Color maleCardColour = InactiveCardColour;
  Color femaleCardColour= InactiveCardColour;
  void updateColour(Gender selectedGender) //input of type enum
  {
    if(selectedGender ==Gender.male) // if it is male of enum
        {
      if(maleCardColour==ActiveCardColour) //logic for activating only female or a male active card at a single tive
        maleCardColour=InactiveCardColour;
      else {
        maleCardColour = ActiveCardColour;
        femaleCardColour = InactiveCardColour;
      }
    }
    else
    {
      if(femaleCardColour==ActiveCardColour)
        femaleCardColour= InactiveCardColour;
      else {
        femaleCardColour = ActiveCardColour;
        maleCardColour = InactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(

                  child: GestureDetector( //we can make use of textbutton too but it will change style of card
                    onTap: (){ // good alternative for on pressed for buttons wihtout changing design
                      setState(() {
                        updateColour(Gender.male); // passing enum property as parameter to remove ambiguity of 1 & 2 previously
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      CardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour:  femaleCardColour,
                      CardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: ActiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: ActiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: ActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: BottomContainerHeight,
            width: double.infinity,
            color: InactiveCardColour,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
*/

//we separated out constants in a single file so that its easy to reuse
//them in different modules and easy to modify them
//we add k to them and refactor it to make changes to where ever they were used

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .baseline, //to get texts: height and cm at same base line
                    textBaseline: TextBaseline
                        .alphabetic, //to get texts: height and cm at same base line
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  // VVimp: we can chang the prebuild widgets in fluuter going into the source code like FontAwesomeIcons.we
                  // changed the opacity of slidertheme overlay color
                  SliderTheme(
                    //we embedded the slider in the slidertheme(individual theme)
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
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
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
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
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
              CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}

// VVIMP: we could use defalut floating action button but in the documentation
// it is said that it is best to only use it once so we created out own
// ROUND ICON BUTTON by looking at the code for floating action button and the
// documentation

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed}); //it neccessary to
  //mention the icon and what happens when it is pressed

  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

// ROUTE: (like in gmaps a way to reach a location) but in flutter it is simply
// A PAGE OR A SCREEN
// NAVIGATOR: something that take us on that particular route
// (a widget that manages routes)
