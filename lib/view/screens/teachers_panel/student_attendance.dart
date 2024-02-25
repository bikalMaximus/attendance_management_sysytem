// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attendece_management_system/view/screens/student_panel/student_attendance_list_tile.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/custom_buttons.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';
import 'package:attendece_management_system/model/list/student_list.dart';
import 'package:attendece_management_system/view/screens/teachers_panel/student_attendance_review.dart';
import 'package:flutter/material.dart';

class StudentAttendance extends StatefulWidget {
  const StudentAttendance({super.key});

  @override
  State<StudentAttendance> createState() => _StudentAttendanceState();
}

class _StudentAttendanceState extends State<StudentAttendance> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: CustomTextStyles.primaryColor,
        title: Text(
          "Student Attendance",
          style: CustomTextStyles.appBarText,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Text(
                  "Select Date",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
            Text(
              "${selectedDate.toLocal()}".split(' ')[0],
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: StudentAttendanceListTile()),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StudentAttendanceReview(
                            presentStudentData: presentStudent,
                            absentStudentData: absentStudent,
                            passDate: "${selectedDate.toLocal()}"
                                .split(' ')[0]
                                .toString(),
                          )));
            },
            child: CustomButton(
              buttonName: "Save Attendance",
            ),
          )
        ],
      ),
    );
  }
}

// Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text("Roll No"),
//               Text("Name"),
//               Text("Present"),
//               Text("Absent"),
//             ],
//           ),
