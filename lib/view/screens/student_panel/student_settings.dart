// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, override_on_non_overriding_member, annotate_overrides

import 'package:attendece_management_system/view/resources/text_styles.dart';
import 'package:flutter/material.dart';

class StudentSettings extends StatefulWidget {
  const StudentSettings({super.key});

  @override
  State<StudentSettings> createState() => _StudentSettingsState();
}

class _StudentSettingsState extends State<StudentSettings> {
  @override
  bool _currentPass = true;
  // bool _newPass = true;
  Widget build(BuildContext context) {
    Future openDialog() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Change password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            content: Container(
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    obscureText: _currentPass,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _currentPass = !_currentPass;
                        });
                      },
                      icon: Icon(
                        _currentPass ? Icons.visibility_off : Icons.visibility,
                      ),
                    )),
                  ),
                  Text("current password"),
                  TextField(),
                  Text("New password"),
                  TextField(),
                  Text("Retype new password"),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        CustomTextStyles.primaryColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        );
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
              onTap: () {
                openDialog();
              },
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text("Account Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("Change password"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
