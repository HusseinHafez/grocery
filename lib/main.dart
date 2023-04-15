import 'package:flutter/material.dart';
import 'package:grocery/view/favorites_screen.dart';
import 'package:grocery/view/home_screen.dart';
import 'package:grocery/view/navigation_screen.dart';
import 'package:grocery/view/product_details.dart';
import 'package:grocery/view/qats_porridge_screen.dart';
import 'package:grocery/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
      useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
      HomeScreen.routeName:(ctx)=>const HomeScreen(),
        NavigationScreen.routeName:(ctx)=>const NavigationScreen(),
        ProductDetails.routeName:(ctx)=>const ProductDetails(),
        OatsPorridgeScreen.routeName:(ctx)=>const OatsPorridgeScreen(),
        PopularDealsScreen.routeName:(ctx)=>const PopularDealsScreen(),
    }

    );
  }
}

