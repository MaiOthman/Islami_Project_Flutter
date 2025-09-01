import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
      PageViewModel(
        image: Image.asset('assets/images/img_2.png', height: height*0.40),
        bodyWidget: Text('Welcome To Islami App',
          style: TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center
        ),
        title: '',
        decoration: const PageDecoration(
            imageFlex: 2,
            bodyFlex: 1,
            bodyPadding: EdgeInsets.all(16),
            imagePadding: EdgeInsets.all(24)),
      ),
    PageViewModel(
        titleWidget: Text('Welcome To Islami',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontSize: 32,
            )
        ),
      image: Image.asset('assets/images/img_3.png', height: height*0.40),
      bodyWidget: Text('"We Are Very Excited To Have You In Our Community.",'
        , style: TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w700),
      textAlign: TextAlign.center
      ),
      decoration: const PageDecoration(
          imageFlex: 2,
          bodyFlex: 1,
          bodyPadding: EdgeInsets.all(16),
          imagePadding: EdgeInsets.all(24)),
    ),
      PageViewModel(
        titleWidget: Text("Reading the Quran",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontSize: 32,
            )
        ),
        image: Image.asset('assets/images/img_4.png', height: height*0.40),
        bodyWidget: Text('Read, and your Lord is the Most Generous.',
          style: TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center
        ),
        decoration: const PageDecoration(
          titlePadding: EdgeInsets.all(16),
            imageFlex: 2,
            bodyFlex: 1,
            bodyPadding: EdgeInsets.all(16),
            imagePadding: EdgeInsets.all(24)),
      ),
    PageViewModel(
    titleWidget: Text("Bearish",
    textAlign: TextAlign.center,
    style: const TextStyle(
    color: AppColors.primaryColor,
    fontSize: 32,
    )
    ),
    image: Image.asset('assets/images/img_5.png', height: height*0.40),
    bodyWidget: Text("Praise the name of your Lord, the Most High.",
      style: TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w700),
        textAlign: TextAlign.center
    ),
    decoration: const PageDecoration(
    imageFlex: 2,
    bodyFlex: 1,
        bodyPadding: EdgeInsets.all(16),
        imagePadding: EdgeInsets.all(24)),
    ),
    PageViewModel(
    titleWidget: Text("Holy Quran Radio",
    textAlign: TextAlign.center,
    style: const TextStyle(
    color: AppColors.primaryColor,
    fontSize: 32,
    )
    ),
    image: Image.asset('assets/images/img_6.png', height: height*0.40),
    bodyWidget: Text( "You can listen to the Holy Quran Radio through the application for free and easily."
      , style: TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w700),
    textAlign: TextAlign.center,
    ),
    decoration: const PageDecoration(
    imageFlex: 2,
    bodyFlex: 1,
        bodyPadding: EdgeInsets.all(16),
        imagePadding: EdgeInsets.all(24)),
    )
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