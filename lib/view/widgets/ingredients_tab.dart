import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';

class IngredientsTab extends StatefulWidget {
  const IngredientsTab({Key? key}) : super(key: key);

  @override
  State<IngredientsTab> createState() => _IngredientsTabState();
}

class _IngredientsTabState extends State<IngredientsTab> {
  bool _firstcheckbox = false;
  bool _secondcheckbox = false;
  bool _thirdcheckbox = false;

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
                  'assets/images/banner3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Serving',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getFont(30),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(30),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getFont(18),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getHeight(30),
            ),
            CheckboxListTile(
              value: _firstcheckbox,
              onChanged: (v) {
                setState(() {
                  _firstcheckbox = v!;
                });
              },
              activeColor: Colors.deepOrange,
              title: const Text('1 packet rolled oats'),
              controlAffinity: ListTileControlAffinity.leading,
              side: BorderSide(color: Colors.deepOrange, width: getWidth(1.5)),
            ),
            CheckboxListTile(
              value: _secondcheckbox,
              onChanged: (v) {
                setState(() {
                  _secondcheckbox = v!;
                });
              },
              activeColor: Colors.deepOrange,
              title: const Text('Half kg Liquid milk'),
              controlAffinity: ListTileControlAffinity.leading,
              side: BorderSide(color: Colors.deepOrange, width: getWidth(1.5)),
            ),
            CheckboxListTile(
              value: _thirdcheckbox,
              onChanged: (v) {
                setState(() {
                  _thirdcheckbox = v!;
                });
              },
              activeColor: Colors.deepOrange,
              title: const Text('100 gm sugar(optional)'),
              controlAffinity: ListTileControlAffinity.leading,
              side: BorderSide(color: Colors.deepOrange, width: getWidth(1.5)),
            ),
            SizedBox(
              height: getHeight(20),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.deepOrange),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Shop ingredients',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getFont(25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
