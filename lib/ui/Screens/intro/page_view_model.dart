import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../utilis/app_colors.dart';

class PageVM {
  PageViewModel pageVM(String title, String img, String body, double h){
    return PageViewModel(
      titleWidget: Text(title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontSize: 32,
          )
      ),
      image: Image.asset('assets/images/$img', height: h *0.40),
      bodyWidget: Text(body
          , style: TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center
      ),
      decoration: const PageDecoration(
          imageFlex: 2,
          bodyFlex: 1,
          bodyPadding: EdgeInsets.all(16),
          imagePadding: EdgeInsets.all(24)),
    );
  }
}