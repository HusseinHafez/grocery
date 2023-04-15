import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/widgets/history_orders.dart';
import 'package:grocery/view/widgets/ongoing_orders.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Order',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getFont(30),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(

              indicator: UnderlineTabIndicator(

                borderSide: BorderSide(
                  width: 2,
                  color: Colors.deepOrange,
                ),
                insets: EdgeInsets.symmetric(horizontal: 40),
              ),
              tabs: [
                Tab(
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontSize: getFont(22),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: getFont(22),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [OnGoingOrders(), HistoryOrders()],
          ),
        ));
  }
}
