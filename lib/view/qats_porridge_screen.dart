import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/widgets/ingredients_tab.dart';
import 'package:grocery/view/widgets/overview_tab.dart';
import 'package:grocery/view/widgets/video_tab.dart';

class OatsPorridgeScreen extends StatelessWidget {
  static const String routeName = '/oats';

  const OatsPorridgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 10,
                right: 10,
                bottom: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Oats porridge recipe',
                        style: TextStyle(fontSize: getFont(30)),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline_outlined,
                            size: getFont(40),
                          ))
                    ],
                  )
                ],
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.deepOrange,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicator: const BoxDecoration(
                  border: BorderDirectional(
                top: BorderSide(width: 2, color: Colors.deepOrange),
              )),
              tabs: [
                Tab(
                  child: Text(
                    'Overview',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(15),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Ingredients',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(13),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Video',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(15),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Recipe',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(15),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 244, 244, 246),
            toolbarHeight: getHeight(100),
            automaticallyImplyLeading: false),
        body: const TabBarView(
          children: [
            OverViewTab(),
            IngredientsTab(),
           VideoTab(),
            Scaffold(),
          ],
        ),
      ),
    );
  }
}
