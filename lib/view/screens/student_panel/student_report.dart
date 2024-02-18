// ignore_for_file: prefer_const_constructors

import 'package:attendece_management_system/view/resources/text_styles.dart';
import 'package:flutter/material.dart';

class StudentReport extends StatelessWidget {
  const StudentReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: CustomTextStyles.primaryColor,
        title: Text(
          "Student Report",
          style: CustomTextStyles.appBarText,
        ),
        centerTitle: true,
      ),
    );
  }
}
