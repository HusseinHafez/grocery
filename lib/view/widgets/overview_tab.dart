import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class OverViewTab extends StatelessWidget {
  const OverViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getHeight(230),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banner2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(30),
            ),
            Text(
              'Oats porridge is a quick and healthy porridge made with Oats Water or milk Both quick cooking Oats or rolled oats can be used',
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: getFont(20)),
            ),
            SizedBox(
              height: getHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Prep Time',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(5),
                    ),
                    const Text(
                      '1 min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Cook Time',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(5),
                    ),
                    const Text(
                      '5 min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Total Time',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(5),
                    ),
                    const Text(
                      '6 min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: getHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('City',style: TextStyle(fontWeight: FontWeight.bold,fontSize: getFont(18)),),
                    SizedBox(
                      height: getHeight(5),
                    ),
                    Text(
                      'American,World',
                      style: TextStyle(fontSize: getFont(25),fontWeight: FontWeight.bold),
                    )
                  ],
                ),Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Course',style: TextStyle(fontWeight: FontWeight.bold,fontSize: getFont(18)),),
                    SizedBox(
                      height: getHeight(5),
                    ),
                    Text(
                      'Breakfast',
                      style: TextStyle(fontSize: getFont(25),fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: getHeight(30),
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: getFont(18)),),
                    SizedBox(
                      height: getHeight(3),
                    ),
                    Text(
                      'Vegetarian',
                      style: TextStyle(fontSize: getFont(25),fontWeight: FontWeight.bold),
                    )
                  ],
                ),Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Difficulty Type',style: TextStyle(fontWeight: FontWeight.bold,fontSize: getFont(18)),),
                    SizedBox(
                      height: getHeight(3),
                    ),
                    Text(
                      'Easy',
                      style: TextStyle(fontSize: getFont(25),fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
