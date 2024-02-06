import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/models/item.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/utils/global.dart';

class CustomGrid {
  static Widget makeItemGrid(List<Item> items, Function changeSate) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) =>
          _builderItemCard(items[index], changeSate),
    );
  }

  static Widget _builderItemCard(Item item, Function changeSate) {
    return Card(
      child: Column(children: [
        Text(item.name,
            style: const TextStyle(
                fontSize: 20, color: normal, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Image.asset(
          "assets/images/${item.image}",
          width: 120,
          height: 120,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Global.addToCard(item);
                changeSate();
              },
              child: const Icon(
                Icons.shopping_cart,
                color: accent,
              ),
            ),
            const Text("3500 Ks"),
            const Icon(
              Icons.visibility,
              color: accent,
            )
          ],
        )
      ]),
    );
  }
}
