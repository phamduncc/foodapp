import 'package:flutter/material.dart';
import 'package:oder_food/Model/Cake.dart';

import '../../../constants.dart';
class Title_And_Image extends StatelessWidget {
  const Title_And_Image({
    Key? key,
    required this.cake,
  }) : super(key: key);

  final Cake cake;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        children: [
          Text("Banh sieu to khong lo",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(cake.title,
            style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ) ,
          ),
          Row(
            children: [
              Text("\$${cake.price}",
                style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ) ,
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                    tag: "${cake.id}",
                    child: Image.asset(cake.image, fit: BoxFit.fill ,)),
              )
            ],
          )
        ],
      ),
    );
  }
}