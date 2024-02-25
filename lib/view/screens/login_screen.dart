// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, override_on_non_overriding_member, annotate_overrides

import 'package:attendece_management_system/view/resources/custom_widgets/custom_buttons.dart';
import 'package:attendece_management_system/view/resources/custom_widgets/text_styles.dart';
import 'package:attendece_management_system/view/resources/routes/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool _obsecureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomTextStyles.primaryColor,
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 400,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "username",
                            prefixIcon: Icon(Icons.person)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: _obsecureText,
                        decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              icon: Icon(
                                _obsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            )),
                      ),
                    ]),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.parentPanel);
                      },
                      child: CustomButton(buttonName: "Log In"))
                ],
              ),
            ),
          ),
        ));
  }
}
