import 'package:flutter/material.dart';
import 'package:oder_food/Model/Cake.dart';

import '../../../constants.dart';
class ItemCard extends StatelessWidget {
  final Cake cake;
  final Function press;
  const ItemCard({
    Key? key, required this.cake, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        press();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
                color: cake.color, borderRadius: BorderRadius.circular(16)),
            child: Hero(
              tag: "${cake.id}",
                child: Image.asset(cake.image)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              cake.title,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Text(
            "\$${cake.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
