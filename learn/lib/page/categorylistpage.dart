// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:learn/models/category.dart';
import 'package:learn/models/utils.dart';
import 'package:learn/page/categorybottonbarr.dart';
import 'package:learn/page/categorycard.dart';
import 'package:learn/page/selectedcategorypage.dart';
import 'package:learn/utility/coleur.dart';
import 'package:learn/utility/icon_font.dart';
import 'package:learn/utility/icon_helper.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.00,
        iconTheme: IconThemeData(color: AzColor.Main_Color),
        title: IconFont(
          couleur: AzColor.Main_Color,
          iconName: IconFontHelper.logo,
          size: 40,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(child: Image.asset('assets/imgs/me.jpg')),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'List of categories',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) => CategoryCard(
                              category: categories[index],
                              onCardClick: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectedCategoryPage()));
                              },
                            )),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CategoryButtomBarr(),
            ),
          ],
        ),
      ),
    );
  }
}
