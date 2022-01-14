import 'package:flutter/material.dart';
import 'dart:math';
/*
Expanded class makes something more kinda responsive and has to be a child
of a row or a collum (it will expand to fill the horizontal or vertical space
on the main axis so its children will expand or contract depending on how much
space is availible)


in row if i wanted 1st expanded widget to occupy twice the space as of 2nd
expanded widget then use flex:2 and for other flex:1 (flex is just a ratio)
 */

/*
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
// here the thing to note is the image with is more than 300(screen width)
// so we manually set the image width
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:1,
            child: Image(

                width: 200,
                image: AssetImage('images/dice1.png')
            ),
        ),
        Expanded(
          flex:1,
          child: Image(
              width: 200,
              image: AssetImage('images/dice1.png')
          ),
        )
      ],
    );
  }
}
*/


/*
another shorter way of doing the same thing is by using image assets
note: to make the widgets go to the center we can return center instead of
row by embedding it into center either manually or by clicking on row then
to flutter outline then center icon

note: we can do various things with flutter outline wrap the widgets with
various other things

the bulb that glows enables us to do various things including remove a widget etc
 */

/*
now how to make buttons in this is we encapurate the item in button i.e:
FlatButton, RaisedButton etc so here we are encapurating image inside button
and we need to define what happens when the button gets pressed onPressed: (){
}

imp: at the end of statement we put semicolon

DART
we declare a var and enter the data irrespective of the data type or use sepecific
datatype rg:int,String etc.

STRING INTERPOLATION:now like in java script to print var we use $var_name same is the case here.
NOTE: for hot reload to occur declare var in Widget build.
DART is a statically typed language eg:var x='fsv';x=456; it will throw error
as x can store only string. But in dynamically typed languagei.e:python,javascript
,objective c it will not throw an error.
TIP: try to mention the datatype like in c++;
2 ways of dealing with it:
1. var x; x=142;x='fdsa' will not throw an error
2. dynamic x;DYNAMIC DATA TYPE

 */


/*
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int countr = 0,countl = 0;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: ()
                    {
                        countl++;
                        print('left' button got pressed $countl times');
                    },
                    child: Image.asset('image/dice1.png'))
            ),
          ),
          SizedBox(
            width:20,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                      onPressed: ()
                      {
                            countr++;
                            print('right button got pressed $countr times');
                      },
                  child: Image.asset('image/dice2.png'))
            ),
          ),

        ],
      ),
    );
  }
}
*/

/*
STATELESS WIDGET: if state of widget static no change;i.e:static website;
STATEFUL WIDGET:
even though the var value is changed when the button is pressed but the change
is not detected in image as the state is not changed
int stateful widget we also have to use (setSate) it calls back the build
and see where that change has affected the state
 */
/*
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int countl = 1,countr = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: ()
                    {
                      setState(() {
                        countl++;
                        if(countl>6)
                          {
                            countl = 1;
                          }
                      });

                    },
                    child: Image.asset('images/dice$countl.png')
                ),
            ),
          ),
          SizedBox(
            width:20,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: ()
                    {
                      setState(() {
                        countr++;
                        if(countr>6)
                          {
                            countr=1;
                          }
                      });

                    },
                    child: Image.asset('images/dice$countr.png'))
            ),
          ),

        ],
      ),
    );
  }
}

*/


//to generate random numbers we use maths library in dart
// and to reduce the code we use funcrion plus when any of two die gets
//clicked value of both the dices get changed


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int countl = 1,countr = 1;
  void changeDiceFace()
  {
    setState(() {
      countl = Random().nextInt(6)+1;
      countr = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: ()
                  {
                    changeDiceFace();

                  },
                  child: Image.asset('images/dice$countl.png')
              ),
            ),
          ),
          SizedBox(
            width:20,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: ()
                    {
                      changeDiceFace();

                    },
                    child: Image.asset('images/dice$countr.png'))
            ),
          ),

        ],
      ),
    );
  }
}

void lc()
{

}






