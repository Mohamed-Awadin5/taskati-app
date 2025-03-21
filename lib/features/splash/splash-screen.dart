import 'package:flutter/material.dart';
import 'package:taskati/core/utls/app-icon.dart';
import 'package:taskati/core/utls/app-strings.dart';
import 'package:taskati/features/home/home-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 198, 198),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Appicon.logosplashicons),
            Text(
              'taskati',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              Appstrings.descriptionapp,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
