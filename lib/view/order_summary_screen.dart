import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/widgets/favorite_listtile.dart';

import '../controller/controlle.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ShopController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 244, 244, 246),
          title: Text(
            'Order Summary',
            style: TextStyle(
              fontSize: getFont(25),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 244, 244, 246),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FavoriteListTile(
                    price: controller.orders[index].price,
                    text: controller.orders[index].text,
                    title: controller.orders[index].title,
                    imageUrl: controller.orders[index].imageUrl,
                  ),
                ),
                itemCount: controller.orders.length,
              ),
            ),
            Stack(
              fit: StackFit.loose,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 120),
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getFont(25),
                      ),
                    ),
                  ),
                ),
                FractionalTranslation(
                  translation: const Offset(4.6, 0.25),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      '23.5\$',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
