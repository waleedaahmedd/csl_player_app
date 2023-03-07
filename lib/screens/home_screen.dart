import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';
import '../widgets/games_gridview_list.dart';
import '../widgets/tournament_horzontal_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Welcome To CSL',
                style: CustomTextStyle.textStyle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45.r,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(width: 10.w,),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Tournaments',
                style: CustomTextStyle.textStyle4,
              ),
            ),
            SizedBox(height: 5.h,),
            tournamentHorizontalList(),
            SizedBox(height: 10.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Games',
                style: CustomTextStyle.textStyle4,
              ),
            ),
            gamesGridViewList()
          ],
        ),
      ),
    );
  }
}
