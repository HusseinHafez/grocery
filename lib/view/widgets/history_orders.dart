import 'package:flutter/material.dart';


import '../../controller/controlle.dart';
import 'ongoing_order_listtile.dart';

class HistoryOrders extends StatelessWidget {
  const HistoryOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ShopController();
    return ListView.builder(
      itemBuilder: (context, index) => OnGoingOrdersListTile(
        statuText: controller.onGoingOrders[index].statuText,
        price: controller.onGoingOrders[index].price,
        title: controller.onGoingOrders[index].title,
        dateTime: controller.onGoingOrders[index].dateTime,
        statu: controller.onGoingOrders[index].statu,
      ),
      itemCount: controller.onGoingOrders.length,
    );
  }
}
