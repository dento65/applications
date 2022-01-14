import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

/*
PACKAGE is code written by somebody to achieve a specific goal.They
are kind enough to upload it for others to reuse it(without spending
much more time rewriting it again).
here we use pub.dev/packages and dependencies to yaml file
then get dependencies
i.e name_of_dependancy version
TIP: mention the version with caret/top hat symbol(^)
(to avoid crash if versions are hugely updated or have a bug)
pick the package that has the most score.
READ how to install and use a package
AUDIO PLAYER PACKAGE HAS BEEN ADDED
 */
/*
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TextButton(
            onPressed: (){
              final player = AudioCache();
              player.play('notes1.wav');
            },
            child: Text('click me'),
          ),
        ),
      ),
    );
  }
}
*/

//to wrap with widget use option+ enter
/*void playSound(int sno)
{
  final player = AudioCache();
  player.play('notes$sno.wav');
}

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Expanded(
                  child :TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: (){
                  playSound(1);
                },

              ),
              ),
               Expanded(
                 child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: (){
                    playSound(2);
                  },

              ),
               ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: (){
                    playSound(3);
                  },

                ),
              ),
              Expanded(
                  child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white70,
                ),
                onPressed: (){
                  playSound(4);
                },

              ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: (){
                    playSound(5);
                  },

                ),
              ),
            ]
        )
        ),
      ),
    );
  }
}
 */
/*
void playSound(int sno)
{
  final player = AudioCache();
  player.play('notes$sno.wav');
}

Expanded buildKey(String color,int soundNumber)
{
  return Expanded(
    child :TextButton(
    style: TextButton.styleFrom(
    backgroundColor: Colors.color,
  ),
  onPressed: (){
playSound(soundNumber);
}
  ),
  );
}

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  buildKey('red', 1),
                  buildKey('orange', 2),
                  buildKey('yellow',3),
                  buildKey('green',4),
                  buildKey('teal',5),
                  buildKey('blue',6),
                  buildKey('purple',7),
                ]
            )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.teal, soundNumber: 5),
                buildKey(color: Colors.blue, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
          ),
        ),
      ),
    );
  }
}
 *///error in code