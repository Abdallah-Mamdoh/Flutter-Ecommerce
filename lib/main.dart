import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/screens/api_data.dart';
import 'package:flutter_quiz_project/screens/hive_categories.dart';
import 'package:flutter_quiz_project/screens/login_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
Directory dir=await getApplicationDocumentsDirectory();  //dir path of your mobile from pathprovider package
await Hive.initFlutter(dir.path);
await Hive.openBox("dataBox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LoginPage(),
    );
  }
}

