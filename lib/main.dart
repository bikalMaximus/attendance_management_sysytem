// ignore_for_file: prefer_const_constructors

import 'package:attendece_management_system/view/screens/login_screen.dart';
import 'package:attendece_management_system/view/screens/routes/routes.dart';
import 'package:attendece_management_system/view/screens/splash_screen.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_attendance.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_home.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // after completion of the project
      // onGenerateRoute: AppRouter.getRoute,
      // initialRoute: Routes.studentPanel,
      home: SplashScreen(),
    );
  }
}
