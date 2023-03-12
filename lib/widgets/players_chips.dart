import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_colors.dart';
import '../theme/custom_fonts.dart';

Widget playerChips() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Wrap(
          runSpacing: 10,
        spacing: 10,
        children:
          List<Widget>.generate(6, (int index) {
        return Chip(
          deleteIcon: Icon(Icons.highlight_remove),
          deleteIconColor: CustomColors.color1,
          surfaceTintColor: Colors.green,
          onDeleted: () {},
          backgroundColor: Colors.white,
          labelPadding: const EdgeInsets.all(5.0),
          avatar: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          label: Text(
            'Player',
            style: CustomTextStyle.textStyle2,
          ),
          elevation: 6.0,
          shadowColor: Colors.grey[60],
          padding: const EdgeInsets.all(6.0),
        );
      }


  )),
    );
}