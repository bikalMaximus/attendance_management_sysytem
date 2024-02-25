// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';
import 'package:attendece_management_system/view/resources/routes/routes.dart';
import 'package:attendece_management_system/view/screens/admin_panel/teacher_report.dart';
import 'package:attendece_management_system/view/screens/student_panel/student_report.dart';
import 'package:flutter/material.dart';

class TeacherHome extends StatefulWidget {
  const TeacherHome({super.key});

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  DateTime selectedDate = DateTime.now();

  String selectedOption = 'select';

  List<String> options = ['Students', 'Teachers', 'select'];

  @override
  Widget build(BuildContext context) {
    var passDate = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTextStyles.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Teacher Panel",
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
                Navigator.pushNamed(context, Routes.teacherProfile);
              },
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("Attendance"),
              onTap: () {
                Navigator.pushNamed(context, Routes.studentAttendance);
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
                Navigator.pushNamed(context, Routes.logOut);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_add_alt_sharp,
              size: 50,
            ),
            Text(
              "Take Attendance",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: CustomTextStyles.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.studentAttendance);
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  )),
            ),
            SizedBox(
              height: 70,
            ),
            Icon(
              Icons.file_copy,
              size: 50,
            ),
            Text(
              "See Report",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: CustomTextStyles.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentReport(
                                  passDate: passDate.toString(),
                                )));
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  )),
            ),
            SizedBox(
              height: 70,
            ),
            Icon(
              Icons.supervised_user_circle,
              size: 50,
            ),
            Text(
              "Student List",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: CustomTextStyles.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.studentsList);
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  )),
            ),
          ],
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
