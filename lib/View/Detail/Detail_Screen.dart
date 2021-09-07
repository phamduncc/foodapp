import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oder_food/Model/Cake.dart';
import 'package:oder_food/View/Detail/components/body.dart';

import '../../constants.dart';
class DetailScreen extends StatelessWidget {
  final Cake cake;
  const DetailScreen({Key? key, required this.cake, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cake.color,
      appBar: buildAppBar(context),
      body: Body(cake: cake,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: cake.color,
      // elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
        IconButton(
        onPressed: (){},
          icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,)
        ),
        IconButton(
        onPressed: (){},
          icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,)
        ),
          SizedBox(width: kDefaultPaddin/2,)
        ],
    );
  }
}
