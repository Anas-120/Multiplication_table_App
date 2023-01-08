import 'package:flutter/material.dart';
import 'package:multiplication_table/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override //Work of this line is to specify that we have to use build function given below rather than available in stateless
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiplication Table',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/":(context) => HomePage(),
        
      },
    
    );
  }
}


