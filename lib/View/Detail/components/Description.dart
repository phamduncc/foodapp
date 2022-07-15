import 'package:flutter/material.dart';
import 'package:oder_food/Model/Cake.dart';

import '../../../constants.dart';
// ignore: camel_case_types
class description extends StatelessWidget {
  const description({
    Key? key,
    required this.cake,
  }) : super(key: key);

  final Cake cake;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(cake.description, style: TextStyle(height: 1.5),),
    );
  }
}