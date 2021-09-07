import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'Components/body.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){},
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,)
        ),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,)
        )
      ],
    );
  }
}
