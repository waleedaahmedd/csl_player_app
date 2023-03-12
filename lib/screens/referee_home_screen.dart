import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';
import '../widgets/matches_gridview_list.dart';

class RefereeHomeScreen extends StatelessWidget {
  const RefereeHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Welcome To CSL',
                      style: CustomTextStyle.textStyle1,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: CustomColors.color2,
                      ))
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Akif',
                        style: CustomTextStyle.textStyle2,
                      ),
                      Text(
                        'Akif@contour-software.com',
                        style: CustomTextStyle.textStyle2,
                      ),
                      Text(
                        '+926987456987',
                        style: CustomTextStyle.textStyle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Select Match',
                style: CustomTextStyle.textStyle4,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            matchesGridViewList(),
          ],
        ),
      ),
    );
  }
}
