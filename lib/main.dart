import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Services/IsFirstLaunch.dart';
import 'package:untitled/screens/Onboard.dart';
import 'package:untitled/screens/Welcome.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rideshare App',
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Future<bool> _firstLaunch;

  void initState() {
    setState(() {
      _firstLaunch = isFirstLaunch();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                style: GoogleFonts.poppins(
                  color: Color(0xFF414141),
                  fontSize: 16,
                ),
                "Skip"
            ),
          )
        ],
      ),
      body: FutureBuilder(
          future: _firstLaunch,
          builder: (context, snapshot) {
            switch(snapshot.connectionState) {
              case ConnectionState.done:
                if(snapshot.data == true) {
                  return Onboard();
                } else {
                  return Welcome();
                }
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                return Text("Failed Processing");
            }
          }
      ),
    );
  }
}
