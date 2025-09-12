import 'package:flutter/material.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';

import '../../../../../model/hadeth.dart';

class HadethDateils extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.black,
          leading: InkWell(child: Icon(Icons.arrow_back, color: AppColors.primaryColor, ),
          onTap: Navigator.of(context).pop,
          ),
       // title: Text("Hadith ${hadeth.index}", style: AppStyles.Bold20Primary),
      ),
      body:
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.asset(AppAssets.left_corner_primary,
              width: width*0.2, height: height*0.1,),
            Expanded(child: Text(hadeth.title, style: AppStyles.Bold24Primary, textAlign: TextAlign.center,)),
            Image.asset(AppAssets.right_corner_primary,
              width: width*0.2, height: height*0.1,),
          ]),
          Expanded(child: SingleChildScrollView(child:
          Text(hadeth.body, style: AppStyles.Bold20Primary, textAlign: TextAlign.center,))),
          Image.asset(AppAssets.bottom_primary)
        ],)

    );
  }

}