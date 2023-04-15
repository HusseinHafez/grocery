import 'package:flutter/material.dart';
import 'package:grocery/controller/controlle.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/widgets/favorite_deal_card.dart';

class PopularDealsScreen extends StatelessWidget {
  static const String routeName='/deals';
  const PopularDealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ShopController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Deals',
          style: TextStyle(
            fontSize: getFont(30),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 244, 246),
      body: GridView.builder(
        padding: const EdgeInsets.only(left: 30,top: 15,),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/ 2.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) => FavoriteCard(
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
