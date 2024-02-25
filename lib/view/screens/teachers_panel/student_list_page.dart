// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import 'package:attendece_management_system/model/list/student_list.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';

class StudentListPage extends StatelessWidget {
  const StudentListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTextStyles.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Student List",
          style: CustomTextStyles.appBarText,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: studentName.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Card(
                child: ListTile(
                  leading: Text(
                    (index + 1).toString() + ".",
                    style: TextStyle(fontSize: 16),
                  ),
                  title: Text(
                    studentName[index].toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
