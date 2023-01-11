import 'package:flutter/material.dart';
import 'package:whatsapp/themes/app_theme.dart';

import 'main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      theme: AppTheme.darkTheme,
    );
  }
}
