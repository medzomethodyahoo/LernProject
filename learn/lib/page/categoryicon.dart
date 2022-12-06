// ignore_for_file: use_key_in_widget_constructors, unnecessary_this, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/utility/icon_font.dart';

class CategoryIcon extends StatelessWidget {
  String iconNamess;
  Color couleur;
  double size;

  CategoryIcon(
      {required this.iconNamess, required this.couleur, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: this.couleur,
        child: IconFont(
            couleur: Colors.white, size: this.size, iconName: this.iconNamess),
      ),
    );
  }
}
