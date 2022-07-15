import 'package:flutter/material.dart';
import 'package:oder_food/Model/Cake.dart';

import '../../../constants.dart';
class Color_And_Size extends StatefulWidget {
  const Color_And_Size({
    Key? key,
    required this.cake,
  }) : super(key: key);

  final Cake cake;

  @override
  State<Color_And_Size> createState() => _Color_And_SizeState();
}

class _Color_And_SizeState extends State<Color_And_Size> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("Color: "),
            Row(
              children: [
                ColorDot(
                  color: Colors.blue,
                  isSelected:true,
                ),
                ColorDot(color: Colors.yellow,),
                ColorDot(color: Colors.red,),
              ],
            )

          ],
        ),
        Expanded(
          child: Column(
            children: [
              Text("Size: "),
              Text("${widget.cake.size} cm",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ],
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin/4,
        right: kDefaultPaddin/2,
      ),
      padding: EdgeInsets.all(2.5),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected? color: Colors.transparent,
          )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}