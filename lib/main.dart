import 'package:flutter/material.dart';

import 'dataTime.dart';
import 'quiz_brain.dart';
import 'quiz_page_screen1.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => Screen0(),
        '/first': (context) => Quizlet(),
        '/second': (context) => dataTime(),
      },
    );
  }
}

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   title: Text('Quizlet'),
      // ),
      backgroundColor: Colors.white30,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quizlet',
              style: TextStyle(
                fontSize: 70.0,
                color: Colors.blue,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            Text(
              'Financial Statements True or False',
              style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 15.0,
                letterSpacing: 2.5,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 70.0,
              width: 300.0,
              child: Divider(
                color: Colors.teal,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: RaisedButton(
                color: Colors.red,
                child: ListTile(
                  // leading: Icon(
                  //   Icons.phone,
                  //   color: Colors.teal,
                  // ),
                  title: Center(
                    child: Text(
                      'Start',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  // ************ IMPORTANT ********************* //
                  // Navigator.pushNamed(context, '/first');
                  // Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quizlet()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: RaisedButton(
                color: Colors.blue,
                child: ListTile(
                  // leading: Icon(
                  //   Icons.email,
                  //   color: Colors.teal,
                  // ),
                  title: Center(
                    child: Text(
                      'Time Information',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  // ************ IMPORTANT ********************* //
                  // Navigator.pushNamed(context, '/second');
                  // Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dataTime()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
