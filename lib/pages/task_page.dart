import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  int number;
  TaskPage(this.number);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Multiplication Table of ${number}",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'CormorantGaramond',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 750.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int i = 1; i <= 10; i++)
                  Text(
                    "${number} * ${i} = ${number * i}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'fonts/Roboto-Black.ttf',
                    ),
                  ),
                  SizedBox(
                      height: 20.0,
                  ),
              ]),
          ),
        ));
  }
}
