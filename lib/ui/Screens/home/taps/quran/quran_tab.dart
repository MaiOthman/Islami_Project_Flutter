import 'package:flutter/material.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/most_recent_item.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_resources.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/sura_item.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_routes.dart';
import 'package:islami_project/utilis/app_styles.dart';

import '../../../../../utilis/shared_prefs_helper.dart';

class QuranTab extends StatefulWidget{

  @override
  State<QuranTab> createState() => _QuranTabState();
  List<int> filteredList = List.generate(114, (index)=>index);
  late bool isFounded = true;
  List<int> mostRecent = [];
}


class _QuranTabState extends State<QuranTab> {
  void readDate() async{
    widget.mostRecent = await readSuraIndex();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    readDate();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TextField(
          onChanged: (text)=> searchByText(text),
          cursorColor: AppColors.whiteColor,
          style: AppStyles.Bold16White
          ,decoration: InputDecoration(prefixIcon: ImageIcon(AssetImage(AppAssets.icon_quran), color: AppColors.primaryColor,)
      , hint: Text('Sura Name', style: AppStyles.Bold16White,)
          , enabledBorder: textFieldDecoration(), focusedBorder:  textFieldDecoration()
          )
      ),
        SizedBox(height: sHeight * 0.02),
       Visibility(
           visible: widget.mostRecent.isNotEmpty,
           child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text('Most Recently', style: AppStyles.Bold16White),
           SizedBox(height: sHeight * 0.02),
           SizedBox(
             width: double.infinity,
             height: sHeight * 0.17,
             child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index) =>
                 MostRecentItem(index:widget.mostRecent[index]),
                 separatorBuilder: (context,index) =>SizedBox(width: sWidth*0.02),
                 itemCount: widget.mostRecent.length),
           ),
         ],
       ))
      ,

        SizedBox(height: sHeight * 0.02),
        widget.isFounded?Text('Suras List', style: AppStyles.Bold16White):
        Text("No Result", style: AppStyles.Bold36White,),
        widget.isFounded?Expanded(
          child: ListView.separated(
              itemBuilder: (context, index)=>
                  InkWell(
                    onTap: (){
                      saveSuraIndex(widget.filteredList[index]);
                      Navigator.of(context).pushNamed(AppRoutes.suraDetailsName , arguments: widget.filteredList[index]);
                    },
                    child: SuraItem(englishName: QuranResources.englishQuranSurasList[widget.filteredList[index]],
                        arabicName: QuranResources.arabicQuranSurasList[widget.filteredList[index]],
                        versesNumber: QuranResources.versesNumberList[widget.filteredList[index]],
                      index: widget.filteredList[index],
                    ),
                  ),
              separatorBuilder: (context, index)=>
                  Divider(thickness: 1, color: AppColors.whiteColor, indent: sWidth * 0.1, endIndent: sWidth * 0.1),
              itemCount: widget.filteredList.length),
        ): SizedBox()

      ],
    );
  }

OutlineInputBorder textFieldDecoration(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
  borderSide: BorderSide(width: 2, color: AppColors.primaryColor));
}

  void searchByText(String text) {
    Set<int> suraFounded ={};
    for(int i =0; i < QuranResources.arabicQuranSurasList.length; i++){
      if(QuranResources.arabicQuranSurasList[i].contains(text)){
        suraFounded.add(i);
      }
      if(QuranResources.englishQuranSurasList[i].toLowerCase().contains(text.toLowerCase())){
        suraFounded.add(i);
      }
    }
    setState(() {
      widget.filteredList = suraFounded.toList();
      widget.isFounded = true;
      if(widget.filteredList.isEmpty) {
        widget.isFounded = false;
      }
    });
  }
}