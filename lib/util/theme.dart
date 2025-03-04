/* 색상 팔레트 */
import 'package:flutter/material.dart';

void changeColorTheme(String type) {
  if (type == "defualt") {
    themeMain = const Color(0xFF1E3A8A);
    themeDeepMain = const Color(0xFF172554);
    themeLightMain = const Color(0xFFEFF6FF);
    themeLightGrey = const Color(0xFFE5E7EB);
    themeGrey = const Color(0xFF6B7280);
    themeBlack = const Color(0xFF111827);
    themeWhite = const Color(0xFFFFFFFF);
    themeRed = const Color(0xFFDC2626);
    themeYellow = const Color(0xFFFACC15);
  }
}

late final Color themeMain;
late final Color themeDeepMain;
late final Color themeLightMain;
late final Color themeLightGrey;
late final Color themeGrey;
late final Color themeBlack;
late final Color themeWhite;
late final Color themeRed;
late final Color themeYellow;
