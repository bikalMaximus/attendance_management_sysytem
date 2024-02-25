// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, override_on_non_overriding_member, annotate_overrides

import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';
import 'package:attendece_management_system/view/resources/routes/routes.dart';
import 'package:flutter/material.dart';

class SettingFeature extends StatefulWidget {
  const SettingFeature({super.key});

  @override
  State<SettingFeature> createState() => _StudentSettingsState();
}

class _StudentSettingsState extends State<SettingFeature> {
  @override
  // bool _newPass = true;

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
              onTap: () {
                Navigator.pushNamed(context, Routes.changePassword);
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
