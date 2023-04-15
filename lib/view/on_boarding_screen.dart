import 'package:flutter/material.dart';
import 'package:grocery/controller/controlle.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/home_screen.dart';
import 'package:grocery/view/navigation_screen.dart';
import 'package:grocery/view/widgets/slide_containers_row.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = ShopController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: controller.onBoardingPageIndex != 0
            ? [
                TextButton(
                  onPressed: () {
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        }
                      ,
                  child: Text(
                    'Skip',
                    style:
                        TextStyle(color: Colors.black, fontSize: getFont(20)),
                  ),
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: getHeight(350),
              child: PageView.builder(
                onPageChanged: (i) {
                  setState(() {
                    controller.onBoardingPageIndex = i;
                  });
                },
                itemBuilder: (ctx, i) => Image.asset(
                  controller.onBoardingItems[controller.onBoardingPageIndex].imageUrl,
                  fit: BoxFit.fill,
                  scale: 1.3,
                ),
                itemCount: controller.onBoardingItems.length,
              ),
            ),
            SlideRow(i: controller.onBoardingPageIndex),
            Text(
              controller.onBoardingItems[controller.onBoardingPageIndex].title,
              style: TextStyle(
                fontSize: getFont(30),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              controller.onBoardingItems[controller.onBoardingPageIndex].text,
              style: TextStyle(
                fontSize: getFont(20),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (controller.onBoardingPageIndex < 3) {
                    controller.onBoardingPageIndex += 1;
                  } else {
                    Navigator.of(context).pushNamed(NavigationScreen.routeName);
                  }
                });
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(
                    Colors.deepOrange,
                  )),
              child: Text(
                controller.onBoardingItems[controller.onBoardingPageIndex].textButton,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getFont(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
