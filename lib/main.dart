import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rika/theme/theme_constants.dart';
import 'package:rika/theme/theme_manger.dart';
import 'package:rika/view/loading/splash_screen.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));

  runApp(const MyApp());
}

ThemeManger _themeManger = ThemeManger();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: _themeManger.themeMode,
          home: const SplashScreen(),
        );
  }
}
