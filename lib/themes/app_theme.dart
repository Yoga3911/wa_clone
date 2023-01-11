import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  const AppTheme._();

  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.grey2,
      actionsIconTheme: IconThemeData(
        color: AppColor.grey1,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.green1,
    ),
    scaffoldBackgroundColor: AppColor.grey3,
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: AppColor.grey1,
      labelColor: AppColor.green1,
    ),
  );
}
