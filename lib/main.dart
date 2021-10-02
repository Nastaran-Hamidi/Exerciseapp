// ignore_for_file: prefer_const_constructors
import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      theme: ThemeData(
        fontFamily: "IRANYekan",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme
            .of(context)
            .textTheme
            .apply(displayColor: kTextColor),
      ),
      home: prepareScreen(HomeScreen()),
    );
  }

  prepareScreen(Widget screen,[TextDirection textDirection = TextDirection.rtl]){
    return Directionality(textDirection: TextDirection.rtl, child: screen);
  }
}