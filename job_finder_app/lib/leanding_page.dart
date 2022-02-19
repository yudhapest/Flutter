import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/home_page.dart';

class LeadingPage extends StatelessWidget {
  static const routeName = '/leading_page';
  const LeadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/Ellipse 195.png',
                width: 160,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 17.0,
                  ),
                  Image.asset(
                    'assets/Ellipse 193.png',
                    width: 160,
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Image.asset(
              'assets/Ellipse 194.png',
              width: 90,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 104, left: 24, right: 24, bottom: 74),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find the Job You've\nAlways Dreamed of",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'One of the places where you will find the\nright job with your field of interest, and you\njust have to wait for the manager to call\nyou to hire',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: greyColor,
                        fontSize: 19,
                      ),
                )
              ],
            ),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomePage.routeName);
                  },
                  child: Text(
                    'Get Started',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: primaryColor,
                        ),
                  )))
        ],
      )),
    );
  }
}
