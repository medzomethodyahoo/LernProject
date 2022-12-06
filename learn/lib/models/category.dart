// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

class Category {
  String name;
  Color couleur;
  String icon;
  String img;
  List<Category> SubCategories;

  Category(
      {required this.name,
      required this.couleur,
      required this.icon,
      required this.img,
      required this.SubCategories});
}
