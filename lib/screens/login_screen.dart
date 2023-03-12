import 'package:csl_player_app/theme/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Sign In',
                style: CustomTextStyle.textStyle1,
              ),
              SizedBox(
                height: 40.h,
              ),
              TextField(
                // controller: authViewModel.getPasswordController,
                decoration: InputDecoration(
                  // border: const OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 15.h,
                  ),
                  hintText: 'Enter Contour Email',
                  //  errorText: authViewModel.getPasswordError
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                // controller: authViewModel.getPasswordController,
                decoration: InputDecoration(
                  // border: const OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 15.h,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      size: 15.h,
                    ),
                  ),
                  hintText: 'Enter Password',
                  //  errorText: authViewModel.getPasswordError
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton1(text: 'LOGIN AS REFEREE', onPressed: () {
                      Navigator.pushNamed(context, '/referee_home');
                    }),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: CustomButton1(text: 'LOGIN AS PLAYER', onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    }),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'OR',
                style: CustomTextStyle.textStyle2,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomButton2(text: 'REGISTER', onPressed: () {
                Navigator.pushNamed(context, '/register');
              }),

            ],
          )),
        ),
      ),
    );
  }
}
