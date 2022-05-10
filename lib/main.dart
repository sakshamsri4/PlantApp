import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: kPrimaryColor,
          ),
          // textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          scaffoldBackgroundColor: kBackgroundColor,

          //     ThemeData(
          //   primaryColor: kPrimaryColor,
          //   textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          //   scaffoldBackgroundColor: kBackgroundColor,
          //   visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen());
  }
}
