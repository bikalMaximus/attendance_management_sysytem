// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:attendece_management_system/view/resources/custom_widgets/features_container.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';
import 'package:attendece_management_system/view/resources/routes/routes.dart';
import 'package:attendece_management_system/view/screens/admin_panel/add_teacher_page.dart';
import 'package:attendece_management_system/view/screens/admin_panel/admin_profile.dart';
import 'package:attendece_management_system/view/screens/admin_panel/teacher_report.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_report.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  DateTime selectedDate = DateTime.now();
  String selectedOption = 'select';
  List<String> options = ['Students', 'Teachers', 'select'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTextStyles.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Admin Panel",
          style: CustomTextStyles.appBarText,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: CustomTextStyles.primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 35,
                  ),
                  Text(
                    "Bikal Chudal",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "bikalchudal123@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdminProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt_1),
              title: Text("Add Teacher"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddTeacherPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt_1),
              title: Text("Add Student"),
              onTap: () {
                Navigator.pushNamed(context, Routes.addStudent);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt),
              title: Text("Attendance"),
              onTap: () {
                Navigator.pushNamed(context, Routes.teacherAttendance);
              },
            ),
            ListTile(
                leading: Icon(Icons.file_copy),
                title: Text("Report"),
                trailing: DropdownButton<String>(
                  value: selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue!;
                    });
                    _navigateToScreen(selectedOption);
                  },
                  items: options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("Students List"),
              onTap: () {
                Navigator.pushNamed(context, Routes.studentsList);
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("Teachers List"),
              onTap: () {
                Navigator.pushNamed(context, Routes.teachersList);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pushNamed(context, Routes.settings);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.logOut);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                children: [
                  FeaturesContainer(
                    name: "Add Students",
                    iconData: Icons.person_add,
                    order: 1,
                  ),
                  FeaturesContainer(
                    order: 2,
                    name: "Add Teachers",
                    iconData: Icons.person_add,
                  ),
                  FeaturesContainer(
                    order: 3,
                    name: "Attendance",
                    iconData: Icons.person_add_alt,
                  ),
                  FeaturesContainer(
                    order: 4,
                    name: "Students Report",
                    iconData: Icons.file_copy,
                  ),
                  FeaturesContainer(
                    order: 5,
                    name: "Teachers Report",
                    iconData: Icons.file_copy,
                  ),
                  FeaturesContainer(
                    order: 6,
                    name: "Students List",
                    iconData: Icons.supervised_user_circle,
                  ),
                  FeaturesContainer(
                    order: 7,
                    name: "Teachers List",
                    iconData: Icons.supervised_user_circle,
                  ),
                  FeaturesContainer(
                    order: 8,
                    name: "Settings",
                    iconData: Icons.settings,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToScreen(String selectedOption) {
    switch (selectedOption) {
      case 'Teachers':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TeacherReport(
                    passDate:
                        "${selectedDate.toLocal()}".split(' ')[0].toString(),
                  )),
        );
        break;
      case 'Students':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => StudentReport(
                    passDate:
                        "${selectedDate.toLocal()}".split(' ')[0].toString(),
                  )),
        );
        break;
    }
  }
}
