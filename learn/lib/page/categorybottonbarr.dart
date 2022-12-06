// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utility/coleur.dart';

class CategoryButtomBarr extends StatelessWidget {
  const CategoryButtomBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.20),
            offset: Offset.zero,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipOval(
              child: Material(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: AzColor.Main_Color,
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: AzColor.Main_Color,
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pin_drop,
                    color: AzColor.Main_Color,
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: AzColor.Main_Color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
