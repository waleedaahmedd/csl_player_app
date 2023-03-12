import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';

Widget tournamentHorizontalList() => SizedBox(
      height: 120.w,
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
                            'assets/images/foosball.jpg',
                            width: 100.w,
                            height: 100.w,
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
                                  'FOOSBALL',
                                  style: CustomTextStyle.textStyle5,
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
                                LinearPercentIndicator(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                  animation: true,
                                  barRadius: const Radius.circular(10),
                                  animationDuration: 2000,
                                  width: 160.w,
                                  lineHeight: 15.0.h,
                                  center: const Text(
                                    "Matches Completed 50.0%",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                  percent: 0.5,
                                  // backgroundColor: Colors.grey.shade400,
                                  progressColor: CustomColors.color1,
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
