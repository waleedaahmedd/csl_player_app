import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/custom_buttons.dart';
import '../theme/custom_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Register',
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
                      Icons.person,
                      size: 15.h,
                    ),
                    hintText: 'First Name',
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
                      Icons.person,
                      size: 15.h,
                    ),
                    hintText: 'Last Name',
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
                      Icons.phone,
                      size: 15.h,
                    ),
                    hintText: 'Phone Number',
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
                    hintText: 'Password',
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
                    hintText: 'Confirm Password',
                    //  errorText: authViewModel.getPasswordError
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomButton1(text: 'SIGN UP', onPressed: () {}),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Row(
                    children: [
                      Text(
                        'Already have an Account? ',
                        style: CustomTextStyle.textStyle2,
                      ),
                      Text(
                        'LOGIN',
                        style: CustomTextStyle.textStyle3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

              ],
            )),
          ),
        ),
      ),
    );
  }
}
