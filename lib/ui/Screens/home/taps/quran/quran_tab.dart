import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/most_recent_item.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_resources.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/sura_item.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_routes.dart';
import 'package:islami_project/utilis/app_styles.dart';

class QuranTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TextField( cursorColor: AppColors.whiteColor,
          style: AppStyles.Bold16White
          ,decoration: InputDecoration(prefixIcon: ImageIcon(AssetImage(AppAssets.icon_quran), color: AppColors.primaryColor,)
      , hint: Text('Sura Name', style: AppStyles.Bold16White,)
          , enabledBorder: textFieldDecoration(), focusedBorder:  textFieldDecoration()
          )
      ),
        SizedBox(height: sHeight * 0.02),
        Text('Most Recently', style: AppStyles.Bold16White),
        SizedBox(height: sHeight * 0.02),
        SizedBox(
          width: double.infinity,
          height: sHeight * 0.17,
          child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index) =>
             MostRecentItem(),
              separatorBuilder: (context,index) =>SizedBox(width: sWidth*0.02),
              itemCount: 10),
        ),

        SizedBox(height: sHeight * 0.02),
        Text('Suras List', style: AppStyles.Bold16White),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index)=>
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(AppRoutes.suraDetailsName , arguments: index);
                    },
                    child: SuraItem(englishName: QuranResources.englishQuranSurasList[index],
                        arabicName: QuranResources.arabicQuranSurasList[index],
                        versesNumber: QuranResources.versesNumberList[index],
                      index: index+1,
                    ),
                  ),
              separatorBuilder: (context, index)=>
                  Divider(thickness: 1, color: AppColors.whiteColor, indent: sWidth * 0.1, endIndent: sWidth * 0.1),
              itemCount: QuranResources.versesNumberList.length),
        )


      ],
    );
  }
OutlineInputBorder textFieldDecoration(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
  borderSide: BorderSide(width: 2, color: AppColors.primaryColor));
}

}