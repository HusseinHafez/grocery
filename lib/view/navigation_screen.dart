import 'package:flutter/material.dart';
import 'package:grocery/controller/controlle.dart';

class NavigationScreen extends StatefulWidget {
  static const String routeName = '/navi';

  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final controller = ShopController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.bottomNavigationBarPages
          .elementAt(controller.onBoardingPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        type: BottomNavigationBarType.shifting,
        currentIndex: controller.onBoardingPageIndex,
        onTap:(i){
          setState(() {
            controller.selectedPage(i);
          });
        },
        selectedIconTheme: const IconThemeData(color: Colors.deepOrange),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.eighteen_mp_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
