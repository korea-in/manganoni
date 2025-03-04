import 'package:mang_ga_no_ni/util/util_widget.dart';
import 'package:mang_ga_no_ni/util/theme.dart';
import 'package:flutter/material.dart';

AppBar mainAppBarWidget(BuildContext context) {
  return AppBar(
    backgroundColor: themeMain,
    iconTheme: IconThemeData(color: themeWhite),
    centerTitle: true,
    elevation: 0.0,
    actions: [
      IconButton(
        icon: const Icon(Icons.store),
        onPressed: () {
          Navigator.of(context).pushNamed('/shop');
        },
      ),
      IconButton(
        icon: const Icon(Icons.dashboard),
        onPressed: () {
          Navigator.of(context).pushNamed('/record');
        },
      ),
      widthSizeBox(15)
    ],
  );
}
