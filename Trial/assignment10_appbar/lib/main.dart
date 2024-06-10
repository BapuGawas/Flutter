import 'package:flutter/material.dart';
import 'package:assignment10_appbar/appbar.dart';
import 'package:assignment10_appbar/appbar2.dart';
import 'package:assignment10_appbar/appbar3.dart';
import 'package:assignment10_appbar/appbar4.dart';
import 'package:assignment10_appbar/appbar6.dart';
import 'package:assignment10_appbar/appbar7.dart';
import 'package:assignment10_appbar/appbar9.dart';
import 'package:assignment10_appbar/appbar10.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment10_10(),
    );
  }
}
