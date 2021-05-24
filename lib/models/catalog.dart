import 'package:flutter/material.dart';

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    id: "first",
    name: "earth",
    desc: "Earth is a planet. humans lives on the earth.",
    price: 9999,
    color: "#33505a",
    image: ""
  )
];
