import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_buttons.dart';
import '../theme/custom_fonts.dart';

Widget teamsPlayerVerticalList() => ListView.builder(
    shrinkWrap: true,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: 2,
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
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: const AssetImage('assets/images/profile.jpg'),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Waleed Ahmed',
                          style: CustomTextStyle.textStyle4,
                        ),
                        Text(
                          'Score: 1',
                          style: CustomTextStyle.textStyle4,
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomButton2(text: 'MINUS SCORE', onPressed: () {

                      }),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: CustomButton1(text: 'ADD SCORE', onPressed: () {
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });