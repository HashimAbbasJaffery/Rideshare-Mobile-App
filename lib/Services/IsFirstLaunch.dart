import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isFirstLaunch() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isNotFirstLaunch = prefs.getBool("is_not_first_launch");

  if(isNotFirstLaunch == null || isNotFirstLaunch == false) {
    prefs.setBool("is_not_first_launch", true);
    print("First Launch");
    return true;
  } else {
    print("Not a first launch");
    return false;
  }
}