// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'Screen Navigation',
// Start the app with the "/" named route. In this case, the app starts
// on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      '/': (context) => ScreenOne(),
      '/screen2': (context) => ScreenTwo(),
      '/screen4': (context)=> ScreenFour()
    }
));


class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/screen2');
        },
        child: Container(child: _Screen(Color.fromRGBO(1, 1, 1, 1), 'Screen1', Color.fromRGBO(208, 226, 242, 1)),))
    );

  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/screen4');
        },
        child: Container(
          child: _Screen(Colors.black, 'Screen2', Color.fromRGBO(111, 160, 233, 1))
        )
    )
    );
  }
}

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: Container(
            child: _Screen(Colors.white, 'Screen4', Color.fromRGBO(31, 71, 133, 1))
        )
    )
    );
  }
}

Container _Screen(Color textColor, String label, Color backgroundColor) {
  return Container(
    color: backgroundColor,
    child: Center(
        child: Text(label,
            style: TextStyle(color: textColor, fontSize: 40, fontWeight: FontWeight.bold))
    ),
  );
}


// stateless widget makes the app itself a widget
// class MyApp extends StatelessWidget {
//   @override
//   //build method that describes how to
//   // display the widget in terms of other, lower level widget
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       //scaffold widget from material lib provides a default app
//       //bar and a body property that holds the widget tree
//       home: Scaffold(
//         // backgroundColor: Color.fromRGBO(208, 226, 242, 1),
//         //(111, 160, 233)
//         //   (31, 71, 133 )
//         // appBar: AppBar(
//         //   title: Text('Welcome to Flutter'),
//         // ),
//         body:
//         // Center(
//         //   // the center widget  aligns its widget subtree
//         //   //to the center of the screen
//         //   child: Text('Screen 1'),
//         //
//         //
//         // ),
//         Container(child: _Screen(Color.fromRGBO(1, 1, 1, 1), 'Screen 2', Color.fromRGBO(111, 160, 233, 1)),)
//       ),
//     );
//   }


