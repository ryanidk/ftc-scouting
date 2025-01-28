import 'package:flutter/material.dart';
import 'package:ftc_scouting/screens/start.dart';

const CURRENT_YEAR = 2024;
const API_ENDPOINT = "https://ryanidkproductions.com/api/mergedata";

void main() {
  runApp(const FTCScoutingApp());
}

class FTCScoutingApp extends StatelessWidget {
  const FTCScoutingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTC Scouting',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 132, 189, 255)),
        useMaterial3: true,
      ),
      home: const StartPage(
          title: 'FTC Scouting', year: CURRENT_YEAR, api: API_ENDPOINT),
      debugShowCheckedModeBanner: false,
    );
  }
}
