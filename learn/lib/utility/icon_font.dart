// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, unnecessary_this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  Color couleur;
  double size;
  String iconName;

  IconFont({required this.couleur, this.size = 70, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.iconName,
      style: TextStyle(
        color: this.couleur,
        fontSize: this.size,
        fontFamily: 'orilla',
      ),
    );
  }
}
