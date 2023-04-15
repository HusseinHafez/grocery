import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class DealCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final double price;

  const DealCard({
    Key? key,
    required this.price,
    required this.text,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: getWidth(120),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getFont(20),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(8),
                    ),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: getFont(12), color: Colors.grey),
                    ),
                    SizedBox(
                      height: getHeight(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${price.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getFont(20),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: getFont(25),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(Colors.deepOrange),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            FractionalTranslation(
              translation: const Offset(0.3, -0.1),
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            )
          ],
        ),

    );
  }
}
