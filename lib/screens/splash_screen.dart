import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

import '../theme/custom_colors.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/contour_banner.png',
       // color: CustomColors.orange,
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(color: CustomColors.color1),
      ),
    // futureNavigator: context.read<AuthViewModel>().splashScreenCall(splashContext: context),
      navigator: const LoginScreen(),
      durationInSeconds: 5,
      logoWidth: 100.0,
      loaderColor: CustomColors.color1,
    );
  }
}
