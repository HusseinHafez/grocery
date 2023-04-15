import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class OnGoingOrdersListTile extends StatelessWidget {
  final String title;
  final String statuText;
  final DateTime dateTime;
  final double price;
  final bool? statu;

  const OnGoingOrdersListTile(
      {Key? key,
      required this.statuText,
      required this.price,
      required this.title,
      required this.dateTime,
      required this.statu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
      child: ListTile(
          minLeadingWidth: getWidth(70),
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: getFont(40),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getFont(25),
                ),
              ),
              if (statu == null)
                 Text(
                  'Waiting',
                  style: TextStyle(
                    fontSize: getFont(20),
                  ),
                  textAlign: TextAlign.center,
                )
              else if (statu!)
                Text(
                  statuText,
                  style: TextStyle(
                    fontSize: getFont(20),
                    color: Colors.green
                  ),
                  textAlign: TextAlign.center,
                )
              else
                Text(
                  statuText,
                  style: TextStyle(
                    fontSize: getFont(20),
                    color: Colors.red
                  ),
                  textAlign: TextAlign.center,
                ),
              Text(
                '$dateTime',
                style: TextStyle(
                  fontSize: getFont(18),
                ),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: getFont(20),
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (statu == null)
                const SizedBox()
              else if (statu!)
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              else
                const Icon(
                  Icons.add_circle_rounded,
                  color: Colors.red,
                )
            ],
          )),
    );
  }
}
