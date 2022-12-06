// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn/page/categorylistpage.dart';
import 'package:learn/utility/coleur.dart';
import 'package:learn/utility/icon_font.dart';
import 'package:learn/utility/icon_helper.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/imgs/of_main_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        height: 180,
                        width: 180,
                        color: AzColor.Meat,
                        alignment: Alignment.center,
                        child: IconFont(
                          iconName: IconFontHelper.main_logo,
                          couleur: AzColor.LIGHTER_GREEN,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      'Bienvenue',
                      style: TextStyle(
                          color: AzColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      'Produit fresh.\nsalade. A Tiempo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AzColor.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.all(25),
                    alignment: Alignment.center,
                    child: Text(
                      'Try out this Restaurant near you ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color(0xFF80C038).withOpacity(0.2),
                      highlightColor: Color(0xFF95a070).withOpacity(0.5),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryListPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent,
                            border: Border.all(color: Colors.yellow, width: 4)),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
