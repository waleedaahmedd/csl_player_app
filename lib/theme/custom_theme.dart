import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_colors.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.color1,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: CustomColors.color1,
            primary: CustomColors.color1,
          ),
      textTheme: TextTheme(
        subtitle1: TextStyle(
          fontSize: 12.sp,
          color: CustomColors.color1,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
      ),
      inputDecorationTheme: InputDecorationTheme(
        //fillColor: Colors.white,
        //filled: true,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.color2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        // border: ,
        suffixIconColor: CustomColors.color2,
        prefixIconColor: CustomColors.color2,
        focusColor: CustomColors.color2,
        hintStyle: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 12.sp,
          color: Colors.grey,
        ),
        /*labelStyle: TextStyle(
                    color: CustomColors.color1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),*/
        focusedBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.color1),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      //2

      scaffoldBackgroundColor: Colors.white,
      buttonTheme: ButtonThemeData(
        // 4
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.color1,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.white,
        ));
  }
}
