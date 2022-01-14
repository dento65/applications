import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //this key inside the default constructor is mostly not used
  // but it is req for lets say  kinda dynamically moving widgets
  // or animating them
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);
  // Color colour; //final is ues

  // If you never intend to change a variable, use final or const, either instead of var or in addition
  // to a type. A final variable can be set only once; a const variable is a
  // compile-time constant. (Const variables are implicitly final.)
  // const can only be assinged value at compile time whereas final can be at run time also but
  //both are immutable
  final Color colour;
  Widget CardChild;
  final Function onPress;
  //ReusableCard({this.colour}); //for this constructor it is not neccessary to provide arguments
  ReusableCard({@required this.colour, this.CardChild,this.onPress}); //no @req for CardChild
  //for this constructor it is necessary to provide arguments whenever
  //the widget is called otherwise it will throw an error
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
// now that we are using custom made widgets we know by using child property we
// can make our own changes to the widget so in our custom widget we have to make
// a property/widget child that is not necessary argument like colour
