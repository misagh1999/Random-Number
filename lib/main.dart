import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:random_app/screens/welcome/welcome_screen.dart';
import 'package:random_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'عدد تصادفی',
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale("en","US"),
        Locale("fa", "IR")
      ],
      theme: lightThemeData(context),
      locale: Locale("fa", "IR"),
      home: WelcomeScreen(),
    );
  }
}