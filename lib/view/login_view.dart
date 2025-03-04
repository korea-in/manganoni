import 'dart:async';

import 'package:mang_ga_no_ni/util/util_widget.dart';
import 'package:mang_ga_no_ni/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final SharedPreferences _prefs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            emptyExpanded(),
            Text(
              "자기소개서로 힘들어하는 이들을 위해",
              style: TextStyle(
                  color: themeMain,
                  fontFamily: "bongodicExtraBold",
                  fontSize: 18),
            ),
            Text(
              "맹가노니",
              style: TextStyle(
                  color: themeMain,
                  fontFamily: "bongodicExtraBold",
                  fontSize: 40),
            ),
            emptyExpanded(),
            GestureDetector(
              onTap: () => {print("카카오톡 로그인 호출")},
              child: Container(
                margin: const EdgeInsets.only(right: 30, left: 30),
                width: double.infinity,
                height: 68,
                decoration: loginButtonStyle(),
                child: Center(
                    child: Text(
                  "카카오톡 로그인",
                  style: TextStyle(
                      color: themeWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            heightSizeBox(10),
            GestureDetector(
              onTap: () => {print("구글 로그인 호출")},
              child: Container(
                margin: const EdgeInsets.only(right: 30, left: 30),
                width: double.infinity,
                height: 68,
                decoration: loginButtonStyle(),
                child: Center(
                    child: Text(
                  "구글 로그인",
                  style: TextStyle(
                      color: themeWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            heightSizeBox(20),
          ],
        ),
      ),
    );
  }

  Future<void> login() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.setBool("loginStatus", true);
    return;
  }
}

InputDecoration textInputStyle(String hint) {
  return InputDecoration(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      hintText: hint);
}

BoxDecoration loginButtonStyle() {
  return BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    color: themeDeepMain,
  );
}
