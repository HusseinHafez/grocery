import 'package:flutter/material.dart';
import 'package:grocery/controller/controlle.dart';
import 'package:grocery/view/widgets/ongoing_order_listtile.dart';

class OnGoingOrders extends StatelessWidget {
  const OnGoingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ShopController();
    return ListView.builder(
      itemBuilder: (context, index) => OnGoingOrdersListTile(
        statuText: controller.onGoingOrders[index].statuText,
        price: controller.onGoingOrders[index].price,
        title: controller.onGoingOrders[index].title,
        dateTime: controller.onGoingOrders[index].dateTime,
        statu: null,
      ),
      itemCount: controller.onGoingOrders.length,
    );
  }
}
