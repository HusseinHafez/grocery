import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
import 'package:grocery/view/widgets/custom_rating_bar.dart';
import 'package:grocery/view/widgets/slide_containers_row.dart';

class ProductDetails extends StatefulWidget {
  static const String routeName = '/product_details';

  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _selectedIndex = 0;
  double rating = 3.5;
  bool _showText = false;

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 244, 244, 246),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: getHeight(300),
              child: PageView(
                onPageChanged: (v) {
                  setState(() {
                    _selectedIndex = v;
                  });
                },
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.network(
                      data['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.network(
                      data['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.network(
                      data['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.network(
                      data['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )),
          SlideRow(i: _selectedIndex),
          ListTile(
            subtitle: Text(
              data['text'],
              style: TextStyle(
                color: Colors.grey,
                fontSize: getFont(18),
              ),
            ),
            title: Text(
              data['title'],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getFont(30),
                  fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.deepOrange,
                size: getFont(40),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(
                    '-   1   -',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getFont(20),
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.deepOrange,
                ),
                Text(
                  '\$${(data['price'])}',
                  style: TextStyle(
                      fontSize: getFont(25), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getFont(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _showText = !_showText;
                    });
                  },
                  icon: _showText
                      ? Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: getFont(40),
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: getFont(40),
                        ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: _showText
                ? const Text(
                    'Milk is an excellent source of vitamin and Minerals including Nutrition\'s of concern ',
                    maxLines: 3,
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nutritions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getFont(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Chip(
                  label: Text(
                    '100gm',
                    style:
                        TextStyle(color: Colors.white, fontSize: getFont(15)),
                  ),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: getFont(20),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Preview',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getFont(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                StarRating(
                  rating: rating,
                  onRatingChanged: (rate) {
                    setState(() {
                      rating = rate;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: Text(
                'Add to cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getFont(25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
