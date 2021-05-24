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
      image:
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FEarth&psig=AOvVaw2NO3NQsqi19aZAxhHKM_pZ&ust=1621952417875000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKiG7-DB4vACFQAAAAAdAAAAABAI")
];
