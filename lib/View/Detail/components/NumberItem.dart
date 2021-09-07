import 'package:flutter/material.dart';

import '../../../constants.dart';
class NumberCount extends StatefulWidget {
  const NumberCount({Key? key}) : super(key: key);

  @override
  _NumberCountState createState() => _NumberCountState();
}

class _NumberCountState extends State<NumberCount> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin/2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 30,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: ()=>press(),
        child: Icon(icon),
      ),
    );
  }
}