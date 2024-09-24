import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lock_it/core/theme/app_pallete.dart';
import 'package:lock_it/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: AppPallete.backgroundColor,
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                fontSize: 27,
                color: AppPallete.titleTextColor,
                fontWeight: FontWeight.bold,
              ),
              displayMedium: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(154, 195, 193, 193),
                  fontWeight: FontWeight.w400,
                  wordSpacing: 1.2,
                  height: 1.2),
              displaySmall: TextStyle(
                fontSize: 18,
                color: AppPallete.btnBorderColor,
                fontWeight: FontWeight.bold,
              ),
              headlineMedium: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
        home: const HomeScreen(),
      ),
    );
  }
}
