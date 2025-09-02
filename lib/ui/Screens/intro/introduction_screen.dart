import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_project/ui/Screens/intro/page_view_model.dart';

import '../../../utilis/app_colors.dart';


class MyIntroductionScreen extends StatefulWidget{
  @override
  State<MyIntroductionScreen> createState() => _MyIntroductionScreenState();
}

class _MyIntroductionScreenState extends State<MyIntroductionScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PageVM pVM = PageVM();

    return Scaffold(
      body: IntroductionScreen(key: introKey,
        globalBackgroundColor: AppColors.blackColor,
        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        globalHeader: Align(
        alignment: Alignment.center,
        child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16),
            child: Image.asset('assets/images/img_7.png', height: height * 0.13),
            ),
    ),
    pages: [
      pVM.pageVM('', 'img_2.png', 'Welcome To Islami App', height),
      pVM.pageVM('Welcome To Islami', 'img_3.png', "We Are Very Excited To Have You In Our Community.", height),
      pVM.pageVM("Reading the Quran", 'img_4.png', 'Read, and your Lord is the Most Generous.', height),
      pVM.pageVM("Bearish", 'img_5.png', "Praise the name of your Lord, the Most High.", height),
      pVM.pageVM("Holy Quran Radio", 'img_6.png', "You can listen to the Holy Quran Radio through the application for free and easily.", height),

    ],
    onDone: () =>{},
    onSkip: () =>{}, // You can override onSkip callback
    showSkipButton: true,
    skipOrBackFlex: 0,
    nextFlex: 0,
    showBackButton: true,
    //rtl: true, // Display as right-to-left
    back: const Text("Back", style:TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
    skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
    next: const Text("Next", style:TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
    done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
    curve: Curves.fastLinearToSlowEaseIn,
    controlsMargin: const EdgeInsets.all(16),
    controlsPadding: kIsWeb
    ? const EdgeInsets.all(12.0)
        : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
    dotsDecorator: const DotsDecorator(
    size: Size(10.0, 10.0),
    color: AppColors.gray,
    activeSize: Size(22.0, 10.0),
    activeColor: AppColors.primaryColor,
    activeShape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    ),
    ),
    dotsContainerDecorator: const ShapeDecoration(
    color: AppColors.blackContainerColor,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    )
      )
    );
  }
}