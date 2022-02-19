// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/detail_page.dart';
import 'package:job_finder_app/home_page.dart';
import 'package:job_finder_app/leanding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              secondary: greyColor,
            ),
        textTheme: myTextTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: blueColor,
              onPrimary: primaryColor,
              fixedSize: Size(327, 64),
              textStyle: TextStyle(),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)))),
        ),
      ),
      initialRoute: LeadingPage.routeName,
      routes: {
        LeadingPage.routeName: (context) => LeadingPage(),
        HomePage.routeName: (context) => HomePage(),
        DetailPage.routeName: (context) => DetailPage(),
      },
    );
  }
}
