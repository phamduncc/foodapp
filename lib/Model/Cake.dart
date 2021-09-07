import 'package:flutter/material.dart';

class Cake {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Cake({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Cake> cakes = [
  Cake(
      id: 1,
      title: "Cocolate",
      price: 20,
      size: 24,
      description: dummyText,
      image: "assets/images/banh_1.png",
      color: Color(0xFFE6B398)),
  Cake(
      id: 2,
      title: "Dâu tây",
      price: 34,
      size: 24,
      description: dummyText,
      image: "assets/images/banh_2.png",
      color: Color(0xFFD3A984)),
  Cake(
      id: 3,
      title: "Cocolate 2",
      price: 50,
      size: 30,
      description: dummyText,
      image: "assets/images/banh_3.png",
      color: Color(0xFF989493)),
  Cake(
      id: 4,
      title: "Bông lan trà xanh",
      price: 34,
      size: 27,
      description: dummyText,
      image: "assets/images/banh_4.png",
      color: Color(0xFF99E7AC)),
  Cake(
      id: 5,
      title: "Chocolate 3",
      price: 60,
      size: 36,
      description: dummyText,
      image: "assets/images/banh_5.png",
      color: Color(0xFFFB7883)),
  Cake(
    id: 6,
    title: "Dâu tây 2",
    price: 40,
    size: 33,
    description: dummyText,
    image: "assets/images/banh_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Cake(
      id: 7,
      title: "chocolate kem dâu",
      price: 34,
      size: 30,
      description: dummyText,
      image: "assets/images/banh_7.png",
      color: Color(0xFFFB7883)),
  Cake(
    id: 8,
    title: "Kem sữa",
    price: 38,
    size: 36,
    description: dummyText,
    image: "assets/images/banh_8.png",
    color: Color(0xD3F3E8DD),
  )
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
