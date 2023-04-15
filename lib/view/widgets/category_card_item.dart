import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class CategoryCardItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryCardItem(
      {Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: getHeight(130),
        width: getWidth(70),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          /* image: DecorationImage(image: NetworkImage(imageUrl,),),*/
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: getHeight(90),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)),
                  color: Colors.deepOrange),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getFont(15)
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
