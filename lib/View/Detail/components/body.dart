
import 'package:flutter/material.dart';
import 'package:oder_food/Model/Cake.dart';
import 'package:oder_food/constants.dart';

import 'Color_And_Size.dart';
import 'Description.dart';
import 'NumberItem.dart';
import 'Title_And_Image.dart';
import 'add_to_card.dart';
class Body extends StatelessWidget {
  final Cake cake;
  const Body({Key? key, required this.cake}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height*0.3),
            padding: EdgeInsets.only(top: size.height*0.2,
                left: kDefaultPaddin,
                right: kDefaultPaddin
            ),
            height:500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
              ),
            ),
            child: Column(
              children: [
                Color_And_Size(cake: cake),
                description(cake: cake),
                NumberCount(),
                AddToCart(cake: cake,),
              ],
            ),
            
          ),
          Title_And_Image(cake: cake),
        ],
      ),
    );
  }
}








