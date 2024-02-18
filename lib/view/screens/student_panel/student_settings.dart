// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attendece_management_system/view/resources/text_styles.dart';
import 'package:flutter/material.dart';

class StudentSettings extends StatelessWidget {
  const StudentSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: CustomTextStyles.primaryColor,
        title: Text(
          "Student Settings",
          style: CustomTextStyles.appBarText,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text("Account Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("Password, Bio"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
