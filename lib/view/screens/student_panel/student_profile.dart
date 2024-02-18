// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attendece_management_system/view/resources/text_styles.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: CustomTextStyles.primaryColor,
        title: Text(
          "Student Profile",
          style: CustomTextStyles.appBarText,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image(
                image: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Name: Bikal Chudal"),
            Text("Age: 16"),
            Text("Class: 10"),
            Text("Bio: I am very active person and i love playing basketball."),
            Text("Father Name: Jhonny Chudal"),
            Text("Mother Name: Kashi Maya Gurung Chudal"),
          ],
        ),
      ),
    );
  }
}
