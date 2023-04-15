import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class FavoriteListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final double price;

  const FavoriteListTile({
    Key? key,
    required this.price,
    required this.text,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        minLeadingWidth: getWidth(50),
        leading: CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Column(
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
            Text(
              text,
              style: TextStyle(
                fontSize: getFont(20),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getFont(25),
              ),
            ),
          ],
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(50)
          ),
          width: getWidth(120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                 Text(
                  '1',
                  style: TextStyle(
                    fontSize: getFont(25),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

      ),
    );
  }
}
