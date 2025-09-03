import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_resources.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/quran_tab.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/sura_content.dart';
import 'package:islami_project/ui/Screens/home/taps/quran/sura_content_column.dart';
import 'package:islami_project/utilis/app_assets.dart';
import 'package:islami_project/utilis/app_colors.dart';
import 'package:islami_project/utilis/app_styles.dart';


class SuraDetails extends StatefulWidget{
  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  bool isText = false; bool isCol = false;
  List<String> verses = [];
  String suraString = '';
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    int index2 = ModalRoute.of(context)?.settings.arguments as int;
    if(verses.isEmpty) loadSoraFile(index2);
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back, color: AppColors.primaryColor,)
        ,title: Text(QuranResources.englishQuranSurasList[index2], style: AppStyles.Bold20Primary,
        ), centerTitle: true, backgroundColor: AppColors.blackColor,
      actions: [InkWell(child: Icon(Icons.table_rows_rounded, color: AppColors.primaryColor)
          ,onTap: (){isCol = true; isText = false; setState(() {

          });}),
        SizedBox(width: sWidth * 0.03,)
        ,InkWell(child:Icon(Icons.text_fields, color: AppColors.primaryColor,),
          onTap: (){isCol = false; isText = true; setState(() {
          });},)],
      actionsPadding: EdgeInsetsGeometry.all(sWidth * 0.02)),
      backgroundColor: AppColors.blackColor,
      body: (isText && !isCol)? SuraContent(suraString: suraString, index: index2) : SuraContentColumn(suraList: verses, index: index2)
    );
  }

  Future<void> loadSoraFile(int index) async {
    String text = await rootBundle.loadString('assets/files/quran/${index+1}.txt');
      List<String> suraLine = text.split('\n') ;
      for(int i = 0; i < suraLine.length; i++){
        suraString = suraString+ suraLine[i] + '[${i+1}]  ' ;
      }
      print(suraString);
    setState(() {
      verses = suraLine;
    });
    }
  }