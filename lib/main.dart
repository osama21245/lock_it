import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lock_it/core/theme/theme_data.dart';
import 'package:lock_it/features/home/presentation/screens/home_screen.dart';

import 'features/student/presentation/screens/create_student_account_screen.dart';

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
        title: 'Lock It',
        theme: AppTheme.appDarkTheme,
        home: const CreateStudentAccountScreen(),
      ),
    );
  }
}
