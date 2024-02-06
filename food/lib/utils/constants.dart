import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food/models/item.dart';
import 'package:food/models/product.dart';
import 'package:food/models/tag.dart';

const Color primary = Color(0xFFF6F6F6);
const Color secondary = Color(0xFFFFBB91);
const Color accent = Color(0xFFFF8E6E);
const Color normal = Color(0xFF515070);

const Color yellow = Color(0xffFDC054);
const Color darkGrey = Color(0xff202020);
const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);

List<Product> cats = [
  Product(name: "Burger", image: "Category_Burger.png"),
  Product(name: "Chicken Fried", image: "Category_Chicken_Fried.png"),
  Product(name: "Coffee", image: "Category_Coffee.png"),
  Product(name: "French Fried", image: "Category_French_Fried.png"),
  Product(name: "Hotpot", image: "Category_Hotpot.png"),
  Product(name: "Noodle", image: "Category_Noodel.png"),
  Product(name: "Soft Drink", image: "Category_Soft Drink.png"),
  Product(name: "Warranty", image: "7_Day_Return_Warranty.png"), // Corrected typo
];


List<Tag> tags = [
  Tag(name: "Flash Sale", image: "flash_sale.jpg"),
  Tag(name: "Popular", image: "popular.jpg"),
  Tag(name: "Drink", image: "Drink.png"),
  Tag(name: "Food", image: "Food.png"),
];

List<Item> items = [
  Item(id: "1",name: "Item 1", image: "1.png"),
  Item(id: "2",name: "Item 2", image: "2.png"),
  Item(id: "3",name: "Item 3", image: "3.png"),
  Item(id: "4",name: "Item 4", image: "4.png"),
  Item(id: "5",name: "Item 5", image: "5.png"),
  Item(id: "6",name: "Item 6", image: "6.png"),
  Item(id: "7",name: "Item 7", image: "7.png"),
  Item(id: "8",name: "Item 8", image: "8.png"),
  Item(id: "9",name: "Item 9", image: "9.png"),
  Item(id: "10",name: "Item 10", image: "10.png"),
];
