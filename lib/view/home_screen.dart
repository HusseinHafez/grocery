import 'package:flutter/material.dart';
import 'package:grocery/controller/controlle.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/favorites_screen.dart';
import 'package:grocery/view/product_details.dart';
import 'package:grocery/view/widgets/category_card_item.dart';
import 'package:grocery/view/widgets/deal_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);




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
                width: getWidth(200),
                child: Text(
                  'Hand pick fresh item only for you',
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
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                          borderSide:
                              const BorderSide(color: Colors.transparent),
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
                      ))
                ],
              ),
              SizedBox(
                height: getHeight(150),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => Row(
                    children: [
                      CategoryCardItem(
                          imageUrl:
                              controller.categoryCardItems[index].imageUrl,
                          title: controller.categoryCardItems[index].title),
                      SizedBox(
                        width: getWidth(10),
                      )
                    ],
                  ),
                  itemCount: controller.categoryCardItems.length,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 15),
                height: getHeight(110),
               // width: getWidth(300),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Deals',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(28),
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(PopularDealsScreen.routeName);
                    },
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
                height: getHeight(230),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(ProductDetails.routeName,arguments: {
                            'imageUrl':controller.dealsItems[index].imageUrl,
                            'price':controller.dealsItems[index].price,
                            'text':controller.dealsItems[index].text,
                            'title':controller.dealsItems[index].title,
                          });
                        },
                        child: DealCard(
                          imageUrl: controller.dealsItems[index].imageUrl,
                          price: controller.dealsItems[index].price,
                          title: controller.dealsItems[index].title,
                          text: controller.dealsItems[index].text,
                        ),
                      ),
                      SizedBox(
                        width: getWidth(10),
                      )
                    ],
                  ),
                  itemCount: controller.dealsItems.length,
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
