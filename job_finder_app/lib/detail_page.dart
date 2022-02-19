import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_age';
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                    ),
                    Text(
                      'Job detail',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.bookmark_added_outlined),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 64,
            ),
            Center(
              child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                    elevation: 0,
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Image.asset(
                        'assets/tokopedia.png',
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Senior UI Designer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Jakarta, Indonesia',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: greyColor),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            'Full Time',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: greyColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            'Onsite',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: greyColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            'Senior',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: greyColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: BoxDecoration(
                                border: Border.all(color: blueColor),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Description',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: blueColor),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text('About this Job',
                              style: Theme.of(context).textTheme.headline6),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Currently we are in need of several UI Designers to complete our designer shortage, we hope that with this we can improve the quality of our user interface to customers, because it is very important for',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: greyColor),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text('Job Responsibilities',
                              style: Theme.of(context).textTheme.headline6),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'At least have 3 years of experience as a UI Designer, Able to work in a team or individually, Have a good passion in UI Design',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: greyColor),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 43,
                          ),
                          Center(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Apply Now',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: primaryColor,
                                        ),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
