import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';
import '../widgets/games_gridview_list.dart';
import '../widgets/players_chips.dart';
import '../widgets/team_states_vertical_list.dart';
import '../widgets/teams_horizontal_list.dart';
import '../widgets/tournament_horzontal_list.dart';

class TournamentDetailScreen extends StatelessWidget {
  const TournamentDetailScreen({Key? key}) : super(key: key);

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
                      'Foosball Tournament',
                      style: CustomTextStyle.textStyle1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'My Team',
                  style: CustomTextStyle.textStyle6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage: const AssetImage('assets/images/tiger.jpg'),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contour Tigers',
                          style: CustomTextStyle.textStyle3,
                        ),
                        Text(
                          'Total Players: 5',
                          style: CustomTextStyle.textStyle2,
                        ),
                        Text(
                          'Vacant Space: 1',
                          style: CustomTextStyle.textStyle2,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status: Active',
                          style: CustomTextStyle.textStyle2,
                        ),
                        Text(
                          'Matches Played: 5',
                          style: CustomTextStyle.textStyle2,
                        ),
                        Text(
                          'Win: 3 Loose: 2',
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
                  'Players',
                  style: CustomTextStyle.textStyle7 ,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              playerChips(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Other Team',
                  style: CustomTextStyle.textStyle6,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              teamsHorizontalList(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'My Team States',
                  style: CustomTextStyle.textStyle6,
                ),
              ),

              teamsStatesVerticalList()
            ],
          ),
        ),
      ),
    );
  }
}
