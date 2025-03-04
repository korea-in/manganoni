import 'package:mang_ga_no_ni/util/theme.dart';
import 'package:flutter/material.dart';

class SuccessSignupPage extends StatelessWidget {
  const SuccessSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox.shrink()),
            Text(
              "회원가입을 완료했습니다.",
              style: TextStyle(
                  fontFamily: "bongodicExtraBold",
                  color: themeBlack,
                  fontSize: 30),
            ),
            Text(
              "서비스 이용을 위해 로그인해주세요.",
              style: TextStyle(
                  fontFamily: "bongodicExtraBold",
                  color: themeGrey,
                  fontSize: 20),
            ),
            const Expanded(child: SizedBox.shrink()),
            GestureDetector(
              onTap: () => {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/login", (route) => false)
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                width: double.infinity,
                height: 50,
                decoration: loginButtonStyle(),
                child: Center(
                    child: Text("로그인하러가기", style: loginButtonTextStyle())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

BoxDecoration loginButtonStyle() {
  return BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    color: themeDeepMain,
  );
}

TextStyle loginButtonTextStyle() {
  return TextStyle(
    color: themeWhite,
  );
}
