import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles{
  static final TextStyle Bold16White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor, fontWeight: FontWeight.w700, fontSize: 16,
  );
  static final TextStyle Bold14White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor, fontWeight: FontWeight.w700, fontSize: 14,
  );
  static final TextStyle Bold20White = GoogleFonts.elMessiri(
      color: AppColors.whiteColor, fontWeight: FontWeight.w700, fontSize: 20,
  );
  static final TextStyle Bold20Primary = GoogleFonts.elMessiri(
    color: AppColors.primaryColor, fontWeight: FontWeight.w700, fontSize: 20,
  );
  static final TextStyle Bold20Black = GoogleFonts.elMessiri(
    color: AppColors.blackColor, fontWeight: FontWeight.w700, fontSize: 20,
  );
  static final TextStyle Reg20Black = GoogleFonts.elMessiri(
    color: AppColors.blackColor, fontWeight: FontWeight.w400, fontSize: 16,
  );
  static final TextStyle Bold24Primary = GoogleFonts.elMessiri(
    color: AppColors.primaryColor, fontWeight: FontWeight.w700, fontSize: 24,
  );
  static final TextStyle Bold24White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor, fontWeight: FontWeight.w700, fontSize: 24,
  );
  static final TextStyle Bold32White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor, fontWeight: FontWeight.w700, fontSize: 32,
  );
  static final TextStyle Bold24Black = GoogleFonts.elMessiri(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w700,fontSize: 24,
  );
  static final TextStyle Bold14Black = GoogleFonts.elMessiri(
    color: AppColors.blackColor,
      fontWeight: FontWeight.w700,fontSize: 14,);

  static final TextStyle Bold16LightBlack = GoogleFonts.elMessiri(
    color: AppColors.timerBlackColor,
    fontWeight: FontWeight.w700,fontSize: 16);

  static final TextStyle Bold16Black = GoogleFonts.elMessiri(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,fontSize: 16);

  static final TextStyle Bold20LightBlack = GoogleFonts.elMessiri(
      color: AppColors.timerBlackColor,
      fontWeight: FontWeight.w700,fontSize: 20);
  static final TextStyle Bold36White= GoogleFonts.elMessiri(fontSize: 36, fontWeight: FontWeight.w700, color: AppColors.whiteColor);
}