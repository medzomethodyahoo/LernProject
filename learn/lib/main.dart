// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn/firebase_options.dart';
import 'package:learn/services/test.dart';
import 'package:learn/utility/icon_helper.dart';

import 'models/welcome_page.dart';
import 'utility/coleur.dart';
import 'utility/icon_font.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(
          duration: 4,
          goToPage: WelcomePage(),
        )),
  );
}

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => this.goToPage)));
    });
    return Scaffold(
      body: Container(
        color: AzColor.Meat,
        child: Center(
          child: IconFont(
            iconName: IconFontHelper.fruits,
            couleur: AzColor.DARKER_GREEN,
            size: 100,
          ),
        ),
      ),
    );
  }
}
