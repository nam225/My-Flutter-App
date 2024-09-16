import 'package:flutter/material.dart';
import 'package:myapp/presentation/color_manager.dart';
import 'package:myapp/presentation/font_manager.dart';
import 'package:myapp/presentation/styles_manager.dart';
import 'package:myapp/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main color of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor:
        ColorManager.grey1, // use incase of disabled button for example

    //ripple color
    splashColor: ColorManager.primaryOpacity70,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),

    // App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16)),

    // Buttom theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(color: ColorManager.white),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),
    
    // Text theme
    textTheme: TextTheme(
      headlineLarge: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      bodySmall: getRegularStyle(color: ColorManager.grey1),
      bodyLarge: getRegularStyle(color: ColorManager.grey)
    ),
    // input decoration theme (text from field)
  );
}
