import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/detail_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Category');
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
                        child: Image.asset(
                          'assets/Category.png',
                          width: 18,
                        ),
                      ),
                    ),
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
                        child: Image.asset(
                          'assets/Notification.png',
                          width: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Yudha!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: blackColor,
                          ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Find Your Dream Job',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      height: 50,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Search.png',
                              width: 24,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              decoration: InputDecoration.collapsed(
                                  hintText: 'Search your dream job',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(color: greyColor)),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/Filter.png',
                            width: 24,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Popular Job',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _popularCard(
                      image: 'assets/google.png',
                      selary: r'$50K - $60K',
                      job: 'Senior UX/UI Designer',
                      location: 'Google LLC . Jakarta, Id'),
                  _popularCard(
                      image: 'assets/Meta.png',
                      selary: r'$100K - $260K',
                      job: 'Senior Blockchain',
                      location: 'Meta LLC . California, US'),
                  _popularCard(
                      image: 'assets/amazon.png',
                      selary: r'$70K - $120K',
                      job: 'S. Cloud Computing',
                      location: 'Seattle. Washington, US'),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Recommendation Job',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 6 / 5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.symmetric(horizontal: 15),
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  cardRecommendation(
                      image: 'assets/tokopedia.png',
                      job: 'Sr. UI Designer',
                      onsite: 'Onsite',
                      company: 'Tokopedia',
                      location: 'Jakarta, Indonesia'),
                  cardRecommendation(
                      image: 'assets/gojek.jfif',
                      job: 'Software Engineer',
                      onsite: 'Onsite',
                      company: 'Gojek',
                      location: 'Jakarta, Indonesia'),
                  cardRecommendation(
                      image: 'assets/youtube.png',
                      job: 'Project Manager',
                      onsite: 'Onsite',
                      company: 'Youtube',
                      location: 'California, USA'),
                  cardRecommendation(
                      image: 'assets/shopee.jpg',
                      job: 'UI UX Designer',
                      onsite: 'Remote',
                      company: 'Shopee',
                      location: 'Singapore'),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class cardRecommendation extends StatelessWidget {
  final String image;
  final String job;
  final String onsite;
  final String company;
  final String location;
  const cardRecommendation({
    required this.image,
    required this.job,
    required this.onsite,
    required this.company,
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routeName);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Card(
                    elevation: 0,
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        image,
                        width: 32,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      company,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Onsite',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: greyColor),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              job,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: greyColor,
                ),
                Text(
                  location,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: greyColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _popularCard extends StatelessWidget {
  final String image;
  final String selary;
  final String job;
  final String location;
  const _popularCard({
    required this.image,
    required this.selary,
    required this.job,
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 190,
        width: 300,
        child: Card(
          color: blueColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            image,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      selary,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: primaryColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  job,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  location,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: primaryColor,
                      ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.all(6),
                      height: 30,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          'Full Time',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: blueColor),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.all(6),
                      height: 30,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          'Full Time',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: blueColor),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.all(6),
                      height: 30,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          'Full Time',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: blueColor),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
