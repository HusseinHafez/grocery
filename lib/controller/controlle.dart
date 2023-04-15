import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/model/model.dart';
import 'package:grocery/view/favorite_list_screen.dart';
import 'package:grocery/view/favorites_screen.dart';
import 'package:grocery/view/home_screen.dart';
import 'package:grocery/view/menu_screen.dart';
import 'package:grocery/view/order_screen.dart';
import 'package:grocery/view/order_summary_screen.dart';

import '../model/category_card_model.dart';
import '../model/deal_model.dart';
import '../model/order_model.dart';

class ShopController {
  int onBoardingPageIndex = 0;
  int bottomNavigationBarIndex = 0;

  List<OnBoardingModel> onBoardingItems = [
    OnBoardingModel(
      textButton: 'Get started',
      text: '15000+ Grocery items available only for you',
      title: 'Welcome to Grocery\'s',
      imageUrl: 'assets/images/1.png',
    ),
    OnBoardingModel(
      textButton: 'Next',
      text: 'Fresh fruits from the fields are placed only to serve you fresh',
      title: 'Fresh Fruits',
      imageUrl: 'assets/images/2.png',
    ),
    OnBoardingModel(
      textButton: 'Next',
      text: 'Easy and fast way of shop to save your time',
      title: 'Easy Shopping',
      imageUrl: 'assets/images/3.png',
    ),
    OnBoardingModel(
      textButton: 'Next',
      text: 'Very fast serve day delivery and custom delivery system',
      title: 'Fast Delivery',
      imageUrl: 'assets/images/4.png',
    ),
  ];

  List<CategoryCardModel> categoryCardItems = [
    CategoryCardModel(
        title: 'Fruits',
        imageUrl:
            'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'),
    CategoryCardModel(
        title: 'Ice Cream',
        imageUrl:
            'https://www.cnet.com/a/img/resize/989e8e3be4eb8baae522f982b7cc1f6a3f4c0f6d/hub/2022/12/14/8af299d7-0c8f-493f-9771-c5b4738cb690/gettyimages-1306753442.jpg?auto=webp&fit=crop&height=675&width=1200'),
    CategoryCardModel(
        title: 'Breakfast',
        imageUrl:
            'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2022%2F11%2F17%2Farticle_291139_the-top-10-healthiest-foods-for-kids_-02.jpg'),
    CategoryCardModel(
        title: 'Pizza',
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340'),
    CategoryCardModel(
        title: 'Pizza',
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340'),
    CategoryCardModel(
        title: 'Pizza',
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340'),
    CategoryCardModel(
        title: 'Pizza',
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340'),
  ];
  List<DealModel> dealsItems = [
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one medusae ',
        price: 13),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: '2 Large Pizza and free 3 small ',
        price: 20),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
  ];
  List<DealModel> favoritesMeals = [
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one medusae ',
        price: 13),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: '2 Large Pizza and free 3 small ',
        price: 20),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one medusae ',
        price: 13),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: '2 Large Pizza and free 3 small ',
        price: 20),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
  ];
  List<DealModel> orders = [
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one medusae ',
        price: 13),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: '2 Large Pizza and free 3 small ',
        price: 20),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one medusae ',
        price: 13),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: '2 Large Pizza and free 3 small ',
        price: 20),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
    DealModel(
        imageUrl:
            'https://static.toiimg.com/thumb/53110049.cms?imgsize=148092&width=509&height=340',
        title: 'Pizza',
        text: 'Large Pizza and free one small ',
        price: 10),
  ];

  List<OrderModel> onGoingOrders = [
    OrderModel(
      dateTime: DateTime.parse("2023-02-26"),
      title: 'Name1',
      price: 14.55,
      statuText: 'Delivered',
      statu: true,
    ),
    OrderModel(
      dateTime: DateTime.parse("2023-02-26"),
      title: 'Name2',
      price: 4.33,
      statuText: 'Delivered',
      statu: true,
    ),
    OrderModel(
        dateTime: DateTime.parse("2023-02-26"),
        title: 'Name3',
        price: 16.24,
        statuText: 'Canceled',
        statu: false,),
    OrderModel(
      dateTime: DateTime.parse("2023-02-26"),
      title: 'Name4',
      price: 23.67,
      statuText: 'Canceled',
      statu: false,
    ),
  ];

  List<Widget> bottomNavigationBarPages = const [
    HomeScreen(),
    MenuScreen(),
    FavoriteListScreen(),
    OrderSummary(),
    OrdersScreen(),
  ];

  void selectedPage(int index) {
    onBoardingPageIndex = index;
  }
}
