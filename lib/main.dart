import 'package:flutter/material.dart';
import 'package:note_app/auth/login.dart';
import 'package:note_app/auth/signup.dart';
import 'package:note_app/crud/addnotes.dart';
import 'package:note_app/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          ),
      home: const Login(),
      routes: {
        "login": (context) => const Login(),
        "signup": (context) => const Signup(),
        "homepage" : (context) => const HomePage(),
        "addnotes" : ((context) => const AddNotes())
      },
    );
  }
}
