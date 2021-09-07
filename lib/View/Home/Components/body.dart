import 'package:flutter/material.dart';
import 'package:oder_food/Model/Cake.dart';
import 'package:oder_food/View/Detail/Detail_Screen.dart';
import 'package:oder_food/View/Home/Components/ItemCard.dart';

import '../../../constants.dart';
import 'Categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Food",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: cakes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.75,
                // mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                crossAxisCount: 2),
            itemBuilder: (context, index) => ItemCard(
                cake: cakes[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(cake: cakes[index]),
                    ))),
          ),
        ))
      ],
    );
  }
}
