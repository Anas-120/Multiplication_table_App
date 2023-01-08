import 'package:flutter/material.dart';
import 'package:multiplication_table/pages/task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Multiplication Table",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'CormorantGaramond',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 32),
            height: 750.0,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover
              ), 
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'fonts/CormorantGaramond-Medium.ttf',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Enter number to get Multiplication Table of it:",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'fonts/CormorantGaramond-Medium.ttf',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    TextField(
                      controller: _number,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        hintText: "Enter Number"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      child: Text("Go"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                      onPressed: () {
                        var n = _number.text;
                        var a = int.parse(n);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => TaskPage(a))));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
