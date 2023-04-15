import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/qats_porridge_screen.dart';
import 'package:grocery/view/widgets/category_card_item.dart';

import '../controller/controlle.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ShopController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 244, 246),
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 5, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getWidth(230),
                child: Text(
                  'Choose your on from 1000+ for recipes!',
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: getFont(30)),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                    size: getFont(50),
                  ))
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 244, 246),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15, bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'Search for Anything',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.black45,
                      size: getFont(40),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getFont(28),
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: getFont(20),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getHeight(150),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) => Row(
                  children: [
                    CategoryCardItem(
                        imageUrl: controller.categoryCardItems[index].imageUrl,
                        title: controller.categoryCardItems[index].title),
                    SizedBox(
                      width: getWidth(10),
                    )
                  ],
                ),
                itemCount: controller.categoryCardItems.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Recipes',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getFont(28),
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: getFont(20),
                    ),
                  ),
                )
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.only(right: 15),
              height: getHeight(200),
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/banner2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  FractionalTranslation(
                    translation: const Offset(.0, 0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          decoration: BoxDecoration(
                            color: Colors.white60.withOpacity(.6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            '5-6 min',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          decoration: BoxDecoration(
                            color: Colors.white60.withOpacity(.6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Easy',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  Text(
                    'Oats porridge',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(32),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: getWidth(12),
                  ),
                  Chip(
                    padding: const EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    label: const Text(
                      'new',
                    ),
                    backgroundColor: Colors.deepOrange,
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Breakfast',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getFont(20),
                  ),
                ),
                Text(
                  '.American',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getFont(20),
                  ),
                ),
                Text(
                  '.Vegetarian',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getFont(20),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(OatsPorridgeScreen.routeName),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.only(right: 15, top: 20),
                height: getHeight(220),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/banner3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
