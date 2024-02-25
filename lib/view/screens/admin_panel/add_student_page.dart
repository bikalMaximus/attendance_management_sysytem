// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:attendece_management_system/model/list/student_list.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/custom_buttons.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/student_list_page.dart';
import 'package:flutter/material.dart';

class AddStudentPage extends StatelessWidget {
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomTextStyles.primaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Add Student",
            style: CustomTextStyles.appBarText,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
              child: TextField(
                controller: name,
                decoration: InputDecoration(labelText: "Name"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  String studentValue = name.text;
                  if (studentValue.isNotEmpty) {
                    studentName.add(name.text.toString());
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentListPage()));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Student name: ${name.text} is added!"),
                      backgroundColor: Colors.green,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Enter student name!"),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                child: CustomButton(
                  buttonName: "Add",
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
