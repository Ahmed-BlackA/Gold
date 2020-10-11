import 'package:flutter/material.dart';
import 'package:geld_app2/Ui/screens/money_screen.dart';
import 'Ui/Widgets/Button.dart';
import 'Ui/screens/home_screen.dart';
import 'Ui/screens/intro_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xfff2f9fe),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[200]),
    borderRadius: BorderRadius.circular(25),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[200]),
    borderRadius: BorderRadius.circular(25),
    ),
    disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[200]),
    borderRadius: BorderRadius.circular(25),


      ),
        ),
      ),
      home: intro_screen(),
      routes: {
      'intro_screen':(context) =>intro_screen(),
      'home_screen':(context) =>home_screen(),
        'money_screen':(context)=> money_screen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return intro_screen();
  }
}


