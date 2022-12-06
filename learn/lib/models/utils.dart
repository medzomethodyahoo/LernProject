import 'package:learn/models/category.dart';
import 'package:learn/models/subcategory.dart';
import 'package:learn/utility/coleur.dart';
import 'package:learn/utility/icon_helper.dart';

class Utils {
  static List<Category> getMockedCategory() {
    return [
      Category(
          name: 'Meat',
          couleur: AzColor.Meat,
          icon: IconFontHelper.fruits,
          img: 'cat1',
          SubCategories: [
            Category(
                name: 'cerdo',
                icon: IconFontHelper.meat,
                couleur: AzColor.Meat,
                img: 'cat1_1',
                SubCategories: [])
          ]),
      Category(
          name: 'Fruit',
          couleur: AzColor.Fruit,
          icon: IconFontHelper.fruits,
          img: 'cat2',
          SubCategories: []),
      Category(
          name: 'Vegetable',
          couleur: AzColor.Vegs,
          icon: IconFontHelper.vegs,
          img: 'cat3',
          SubCategories: []),
      Category(
          name: 'Seeds',
          couleur: AzColor.Seeds,
          icon: IconFontHelper.seeds,
          img: 'cat4',
          SubCategories: []),
      Category(
          name: 'Similac',
          couleur: AzColor.Pastries,
          icon: IconFontHelper.pastries,
          img: 'cat5',
          SubCategories: []),
      Category(
          name: 'Espicies',
          couleur: AzColor.Spices,
          icon: IconFontHelper.spices,
          img: 'cat6',
          SubCategories: []),
    ];
  }
}
