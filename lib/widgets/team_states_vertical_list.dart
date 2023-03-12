import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_fonts.dart';

Widget teamsStatesVerticalList() => ListView.builder(
    shrinkWrap: true,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
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
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Match 1',
                      style: CustomTextStyle.textStyle3,
                    ),
                    const Spacer(),
                    Text(
                      'WIN',
                      style: CustomTextStyle.textStyle3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
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
                    Spacer(),
                    Text(
                      'Score: 1',
                      style: CustomTextStyle.textStyle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
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
                    Spacer(),
                    Text(
                      'Score: 1',
                      style: CustomTextStyle.textStyle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      'My Team Score: 3',
                      style: CustomTextStyle.textStyle3,
                    ),
                    const Spacer(),
                    Text(
                      'Total Score: 2',
                      style: CustomTextStyle.textStyle3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
