import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';

Widget teamsHorizontalList() => SizedBox(
  height: 110.w,
  width: double.infinity,
  child: ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/tournament_detail');
            },
            child: Card(
              color: Colors.white,
              elevation: 5,
              // semanticContainer: true,
              //clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/tiger.jpg',
                       // width: 100.w,
                        //height: 90.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 175.w,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contour Tigers',
                              style: CustomTextStyle.textStyle3,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                  width: 23.w,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 24.r,
                                    child: ClipOval(
                                      child: Image.asset(
                                        fit: BoxFit.cover,
                                        'assets/images/profile.jpg',
                                        width: 20.h,
                                        height: 20.h,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Waleed Ahmed',
                                  style: CustomTextStyle.textStyle2,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              'Matches Played',
                              style: CustomTextStyle.textStyle2,
                            ),
                            Spacer(),
                            Text(
                              'Win: 3 Loose: 2',
                              style: CustomTextStyle.textStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
);
