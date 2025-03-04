import 'package:mang_ga_no_ni/util/pref_handler.dart';
import 'package:mang_ga_no_ni/view/agree_view.dart';
import 'package:mang_ga_no_ni/static_page/loading_page.dart';
import 'package:mang_ga_no_ni/static_page/success_signup_page.dart';
import 'package:mang_ga_no_ni/view/login_view.dart';
import 'package:mang_ga_no_ni/util/theme.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PreferencesHandler pref = PreferencesHandler();

  /* 앱 내 사용하는 전역 기능 초기화 */
  pref.initSharedPreferences();
  changeColorTheme("defualt");

  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: "bongodicBold",
            scaffoldBackgroundColor: themeWhite,
            appBarTheme: AppBarTheme(color: themeMain)),
        debugShowCheckedModeBanner: false,
        title: "Flutter App",
        routes: {
          '/loading': (context) => const LoadingPage(),

          //회원가입 및 로그인
          '/agree': (context) => const AgreeView(),
          '/login': (context) => const LoginView(),
          '/success': (context) => const SuccessSignupPage(),

          //메인 컨텐츠
          //'/home': (context) => const HomeView(),
        },
        home: const LoadingPage());
  }
}
