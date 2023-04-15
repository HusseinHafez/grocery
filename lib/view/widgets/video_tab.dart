import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class VideoTab extends StatelessWidget {
  const VideoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getHeight(220),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/banner2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const FractionalTranslation(
                    translation: Offset(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: getHeight(70),),
            Text(
              'Oats porridge',
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: getFont(30)),
            ),
            SizedBox(height: getHeight(30),),
            Text(
              'Oats porridge is a quick and healthy porridge made with oats, water or milk, Both quick cooking oats or roled oats can be used. oats is perfect for Breakfast, Easy to cook,So everyone choose qats for their breakfast.',
              style: TextStyle(
                fontSize: getFont(22),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getHeight(40),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'View more recipes',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: getFont(20)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
