import 'package:flutter/material.dart';
import 'package:grocery/size_config.dart';
class SlideRow extends StatelessWidget {
  final int i;
  const SlideRow({Key? key,required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:List.generate(4, (index) => Row(
        children: [
          Container(
            width: index== i ? getWidth(30) : getWidth(10),
            height: getHeight(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:
                index==i ? Colors.deepOrange : Colors.grey),
          ),
          SizedBox(
            width: getWidth(3),
          ),
        ],
      ))
    );
  }
}
