import 'package:flutter/material.dart';
import 'package:tugasakhir/screen/login.dart';
import 'package:tugasakhir/screen/register.dart';
import 'package:tugasakhir/user/home.dart';
import 'package:tugasakhir/user/editdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'register': (context) => RegisterWidget(),
        'login': (context) => LoginWidget(),
        'menu': (context) => HomeWidget(),
        'editdata': (context) => EditdataWidget(),
      },
      debugShowCheckedModeBanner: false,
      title: 'tugas akhir',
      home: LoginWidget(),
      
    );
  }
}