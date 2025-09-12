import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefKeys{
  static const String mostRecentKey = 'most_recent';
}
void saveSuraIndex(int index) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final List<String> getMostRecent = prefs.getStringList(SharedPrefKeys.mostRecentKey)??[];
  if(getMostRecent.contains('$index')){
    getMostRecent.remove('$index');
  }
  if(getMostRecent.length==5){
    getMostRecent.removeLast();
  }
  getMostRecent.insert(0,'$index');
  await prefs.setStringList(SharedPrefKeys.mostRecentKey, getMostRecent);
}
Future<List<int>> readSuraIndex() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final List<String> getMostRecentAsString = prefs.getStringList(SharedPrefKeys.mostRecentKey)??[];
  List<int> getMostRecentAsInt = getMostRecentAsString.map((item)=>int.parse(item)).toList();
  return getMostRecentAsInt;
}
