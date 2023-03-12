import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_buttons.dart';
import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';
import '../widgets/team_player_vertical_list.dart';

class RefereeMatchScreen extends StatelessWidget {
  const RefereeMatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: CustomColors.color2,
                      )),
                  Expanded(
                    child: Text(
                      'Foosball Match 1',
                      style: CustomTextStyle.textStyle1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          backgroundImage: const AssetImage('assets/images/tiger.jpg'),
                        ),
                        Text(
                          'SCORE: 2',
                          style: CustomTextStyle.textStyle1,
                        ),
                      ],
                    ),
                    Text(
                      'Vs',
                      style: CustomTextStyle.textStyle1,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          backgroundImage: const AssetImage('assets/images/tiger.jpg'),
                        ),
                        Text(
                          'SCORE: 5',
                          style: CustomTextStyle.textStyle1,
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomButton1(text: 'ADD SCORE', onPressed: () {
                }),
              ),

              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Team 1',
                  style: CustomTextStyle.textStyle6,
                ),
              ),
              teamsPlayerVerticalList(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Team 2',
                  style: CustomTextStyle.textStyle6,
                ),
              ),
              teamsPlayerVerticalList(),

            ],
          ),
        ),
      ),
    );
  }
}
