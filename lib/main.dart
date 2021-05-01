
import 'package:flutter/material.dart';
import 'package:followup/parant.dart';
import 'package:followup/signup.dart';
import 'package:followup/studentpage.dart';
import 'package:followup/teacher.dart';
import 'start.dart';
import 'login.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(
      fontFamily: "Nunito",
    ),
    debugShowCheckedModeBanner: false,
    home: new Start(),

  ));
}
