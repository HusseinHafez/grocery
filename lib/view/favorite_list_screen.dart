import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/widgets/favorite_listtile.dart';

import '../controller/controlle.dart';

class FavoriteListScreen extends StatelessWidget {
  const FavoriteListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ShopController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 244, 246),
        title: Text(
          'Favorites',
          style: TextStyle(
            fontSize: getFont(25),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 244, 244, 246),
      body: ListView.builder(
        itemBuilder: (context, index) => FavoriteListTile(
          price: controller.favoritesMeals[index].price,
          text: controller.favoritesMeals[index].text,
          title: controller.favoritesMeals[index].title,
          imageUrl: controller.favoritesMeals[index].imageUrl,
        ),
        itemCount: controller.favoritesMeals.length,
      ),
    );
  }
}
