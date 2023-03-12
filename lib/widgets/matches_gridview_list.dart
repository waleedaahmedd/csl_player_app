import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';

Widget matchesGridViewList() => Expanded(
  child: GridView.builder(
    padding:       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisExtent: 220,
    ),
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/referee_match');
          },
          child: Card(
            color: Colors.white,
            elevation: 5,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/foosball.jpg',
                  width: double.infinity,
                  height: 70.w,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FOOSBALL',
                        style: CustomTextStyle.textStyle5,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Matches 1',
                        style: CustomTextStyle.textStyle2,
                      ),
                      Text(
                        'Matches Score: 2',
                        style: CustomTextStyle.textStyle2,
                      ),
                      Text(
                        'Contour Tigers: 1',
                        style: CustomTextStyle.textStyle2,
                      ),
                      Text(
                        'Contour Lions: 1',
                        style: CustomTextStyle.textStyle2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  ),
);
