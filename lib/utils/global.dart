import 'package:flutter_application_1/models/item.dart';

class Global {
  static List<Item> cartItems = [];

  static addToCard(item) {
    bool exist = false;
    if (cartItems.length > 0) {
      cartItems.forEach((ite) {
        if (item.id == ite.id) {
          ite.count++;
          exist = true;
        }
      });
    }
    if(!exist){
      cartItems.add(item);
    }
  }
}
