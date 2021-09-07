import 'package:flutter/material.dart';

import '../../../constants.dart';
//menu phan loai
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Banh ngot", "Do uong", "Kem", "Do an nhanh"];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              setState(() {
                selected = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Column(
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: selected == index? kTextColor:kTextLightColor
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 2,
                    width: 30,
                    color: selected == index?  Colors.black: Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
