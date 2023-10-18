import 'package:flutter/material.dart';
import 'package:proj_imc_calculator/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            textTheme: GoogleFonts.aDLaMDisplayTextTheme()),
        home: HomePage());
  }
}
