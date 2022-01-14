import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/* //using the stateless widget
void main() {
  runApp(  //instead of writng code in main and compiling it each time
    MyApp()  //
  );
}
 class MyApp extends StatelessWidget {   //using stateless widget enables hot reload


   @override
   Widget build(BuildContext context) {
     return MaterialApp(
     home: Scaffold(
     backgroundColor: Colors.pink,
body: Container(),
),
);
   }
 }  */



/* // names involving bracets are called widgets other are  properties
// ex : scaffold is a widget
void main() {
  runApp(MaterialApp(  // basis for all widgets is material app
    home: Scaffold(    // to create app bar,body we use scaffold
      appBar: AppBar(
        title: Text('health freak'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(child: Image.network('https://picsum.photos/250?image=9')),
    ),
  ));
}

 */
/*
// to create staletesswidget type stle
class  Myapp StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 */




/*
 class Myapp extends StatelessWidget {
   //container same as in html and a container tries to be as big as possible
   //we can set padding and margin according to the format
   // here danger is text can appear in danger area : i.e where there is notch
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.blueGrey,
         body: Container(
           color : Colors.indigo,
           height : 50,
           width :  50,
           margin: EdgeInsets.fromLTRB(20,20,30,30),

           child : Text("hello worfdwewefwefwld"),
         )
       )
     );
   }
 }
*/
 /* margin : EgdgeInsets.all(s)=> sets margin s from all sides
    EgdgeInsets.symmetric(vertical : s,horizontal : s)
    => sets margin only from vertical and horizontal
    EdgeInsets.fromLTRB(s,s,s,s)from ;left right top bottom
    or EdgeInsets.only(left : 30)

    padding: EdgeInsets.all(40)
  */
/*
void main()
{ runApp(
    Myapp()
);
}
class Myapp extends StatelessWidget {
//,sensitive
  // here we use SafeArea widget as parent of container
  // by pressing option + enter wrap with new widget set it to SafeArea
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            body: SafeArea(
              child: Container(
                color : Colors.indigo,
                height : 50,
                width :  50,
                margin: EdgeInsets.fromLTRB(20,20,30,30),

                child : Text("hello worfdwewefwefwld"),
              ),
            )
        )
    );
  }
}
*/

// collums and rows layout make multiple widgets come in rows and collums
/* column doesnt have chid but children so that we can put lots of things
in b/w (having [] angle bracets for lists of items)

to set the v position of column containers use verticalDirection: VerticalDirection.up
or
mainAxisAlignment: MainAxisAlignment.start or end or center or spaceEvenly
to space evenly all container or spaceBetween

perpendicular axis alignment
crossAxisAlignment: end (same) tip make another invisible contianer width double.infitity
to see the effect as it doest align already aligned containers.

crossAxisAlignment: stretch enables to stretch container to the whole screen size

SizedBox(height) add in b/w 2 containers to add space in b/w them.

IMP: all these things can be done for row as well same properties.
 */
/*
void main()
{ runApp(
    Myapp()
);
}

class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        backgroundColor: Colors.teal,
        body : SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Container(
                 color : Colors.indigo,
                 height : 100,
                 width :  100,

                 padding: EdgeInsets.all(10),
                 child : Text("hello worfdwewefwefwld"),
               ),
               Container(
                 color : Colors.yellow,
                 height : 100,
                 width :  100,

                 padding: EdgeInsets.all(10),
                 child : Text("wassup"),
               ),
               Container(
                 color : Colors.lightGreen,
                 height : 100,
                 width :  100,

                 padding: EdgeInsets.all(10),
                 child : Text("wassup"),
               ),
             ],
          )
        )
      )
    );
  }
}
*/
/*
we use CircleAvatar to make circular shape and ctrl+j for its prop radius bckcolor
to use backgroundImage: AssetImage("images/z.jpeg") property for image add image to proj in assets
then packages.get to add them and note yaml files is sensitive to indentations
using Text widget cntrl+j to view other prop

same way add custom fonts to font assets in yaml file download font from gooogle fonts
and add it
 */




/*
void main()
{ runApp(
    Myapp()
);
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Column(
          children:[
            CircleAvatar(
              backgroundImage: AssetImage("images/z.jpeg"),
                  radius: 70,
            ),
            Text(
              'zaid Dento',
                  style: TextStyle(
                    fontFamily: 'Corinthia',
                    fontSize: 70,
                    color: Colors.black45,
            )
            ),
            Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.black45,
                )
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(65, 20, 65, 20),
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                '+917006558076',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
              )
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              margin: EdgeInsets.fromLTRB(10,10 , 10, 40),
              child: Text(
                  'zaiddento@gmail.com',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  )
              ),
            )
          ]
        )
      )
      )
    );
  }
}
*/
//BETTER VERSION
//embedding rows inside collums and vice versa is common
//it enables us to have a  grid like pattern
/*having row and children and a whole bunch of other icons  (Icons(Icon.name))
go to materailpallete icons read icon properties by pressing ctrl+j

*/
/*
void main()
{ runApp(
    Myapp()
);
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.tealAccent,
            body: SafeArea(
                child: Column(
                    children:[
                      CircleAvatar(
                        backgroundImage: AssetImage("images/z.jpeg"),
                        radius: 70,
                      ),
                      Text(
                          'zaid Dento',
                          style: TextStyle(
                            fontFamily: 'Corinthia',
                            fontSize: 70,
                            color: Colors.black45,
                          )
                      ),
                      Text(
                          'FLUTTER DEVELOPER',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Colors.black45,
                          )
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          margin: EdgeInsets.fromLTRB(100,40 , 110, 15),
                        color: Colors.blueGrey,
                        //here we are adding child row
                        child: Row(
                            children:[
                              //watch icon properties by crtl +j
                              Icon(
                                Icons.call,
                                size:20,
                                  color:Colors.black38,
                              ),

                              SizedBox(
                                width:20
                              ),
                              Text(
                                '+917006558076'
                              )
                            ]
                        )
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          margin: EdgeInsets.fromLTRB(100,5 , 110, 40),
                        color: Colors.blueGrey,
                        child: Row(
                            children:[
                              Icon(
                                Icons.email,
                                size:20,
                                color:Colors.black38,
                              ),

                              SizedBox(
                                  width:20
                              ),
                              Text(
                                  'zaiddento@gmail.com'
                              )
                            ]
                        )
                      )
                    ]
                )
            )
        )
    );
  }
}
*/


/* replace container by card and row by listtile
to make it more subtle we can replace container by card widget
but padding doesnt exist for card widget but padding widget does
on row press option+enter new widget Padding

in sized box we can also add the divider line
*/
void main()
{ runApp(
    Myapp()
);
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.tealAccent,
            body: SafeArea(
                child: Column(
                    children:[
                      CircleAvatar(
                        backgroundImage: AssetImage("images/z.jpeg"),
                        radius: 70,
                      ),
                      Text(
                          'zaid Dento',
                          style: TextStyle(
                            fontFamily: 'Corinthia',
                            fontSize: 70,
                            color: Colors.black45,
                          )
                      ),
                      Text(
                          'FLUTTER DEVELOPER',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Colors.black45,
                          )
                      ),
                      SizedBox(
                        height: 10,
                        width:100,
                        child: Divider(
                          color: Colors.teal,
                        )
                      ),
                      Card(
                          
                          margin: EdgeInsets.fromLTRB(100,40 , 110, 15),
                          color: Colors.blueGrey,
                          //here we are adding child row
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: ListTile(
                              leading: Icon(
                                Icons.call,
                                size:20,
                                color:Colors.black38,
                              ),
                                title: Text(
                                    '+917006558076'
                                )
                            )
                          )
                      ),
                      //compare card and container
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          margin: EdgeInsets.fromLTRB(100,5 , 110, 40),
                          color: Colors.blueGrey,
                          child: Row(
                              children:[
                                Icon(
                                  Icons.email,
                                  size:20,
                                  color:Colors.black38,
                                ),

                                SizedBox(
                                    width:20

                                ),
                                Text(
                                    'zaiddento@gmail.com'
                                )
                              ]
                          )
                      )
                    ]
                )
            )
        )
    );
  }
}







