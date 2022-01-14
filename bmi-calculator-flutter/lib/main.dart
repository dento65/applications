import 'package:flutter/material.dart';
import 'input.dart';

//dribble.com can be used to get the good app designs
//flutter cookbook tells how to solve common flutter problems
/*
Theme widgets that define the colors and font styles
for a particular part of the application. Theme widgets are created at the
root of an app by the MaterialApp.
There are some default ones ThemeData.dark() light(),dark() and can also be custom made.
TIp:for color to pick up from any website use  colorzilla tool on chrome
like :21252a is value of rgb to use it in hexa or ARGB her we use it in ARGB
so we add 0xFF to it at the starting
to find relevant keywords on web page use cmd+f

 */

// void main() => runApp(BMICalculator());
//
// class BMICalculator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark().copyWith(
//         appBarTheme:AppBarTheme(
//           backgroundColor: Color(0xff0a0e21),
//         ),
//         scaffoldBackgroundColor: Color(0xff0a0e21),
//         textTheme: TextTheme(
//           bodyText1: TextStyle(
//             color: Colors.white,
//           )
//         )
//       ),
//       home: InputPage(),
//
//
//     );
//   }
// }
//
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
//       body: Center(
//         child: Text('Body Text'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

/*
using default theme and editing it better
IMP POINT: we can wrap any widget inside theme to loo more subtle
previously we created everyhing on a single page now we can create multiple
routes
 */
//in programming languages such as java,swift we inherit the component and then
// overwrite it but here in flutter we use composition

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme:AppBarTheme(
            backgroundColor: Color(0xff0a0e21),
          ),
          scaffoldBackgroundColor: Color(0xff0a0e21),
          textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
              )
          )
      ),
      home: InputPage(),


    );
  }
}

// ROUTE: (like in gmaps a way to reach a location) but in flutter it is simply
// A PAGE OR A SCREEN
// NAVIGATOR: something that take us on that particular route
// (a widget that manages routes)
// navigator widget has its own properties
// A context is nothing else but a reference to the location of a Widget within
// the tree structure of all the Widgets which are built.
// first we have to create routes(3 methods) then we have to use navigator(push,pop) to
// go from one route to the other

// map is a dictionary and has a key and values associated with the keys
// var identifier = { key1:value1, key2:value2 [,…..,key_n:value_n] }
//var words = <int, String>{1: 'sky', 2: 'falcon', 3: 'rock'};