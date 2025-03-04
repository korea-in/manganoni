import 'dart:async';
import 'package:mang_ga_no_ni/util/pref_handler.dart';
import 'package:mang_ga_no_ni/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 1000), () {
      final SharedPreferences pref = PreferencesHandler.instance.pref;

      if (pref.getBool("loginStatus") == null ||
          pref.getBool("loginStatus") == false) {
        print("로그인 안되어 있어 로그인 화면으로 이동");
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/enter", (route) => false);
      } else {
        print("로그인 되어 있음.");
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/enter", (route) => false);
      }
    });
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: loadingBackgroundColor,
        //image: DecorationImage(image: AssetImage('assets/images/loading_background.png'), repeat: ImageRepeat.repeat, scale: 2.5, opacity:0.2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "베이커리타임",
            style: TextStyle(
              fontFamily: "euljiro",
              color: textWhiteColor,
              fontSize: 40,
            ),
          ),
          Text(
            "시간을 기부하다",
            style: TextStyle(
              fontFamily: "euljiro",
              color: textWhiteColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ));
  }
}
