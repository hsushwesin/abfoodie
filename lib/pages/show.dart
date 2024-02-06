import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/customGrid.dart';
import 'package:flutter_application_1/models/tag.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_application_1/utils/global.dart';

class Show extends StatefulWidget {
  const Show({Key? key}) : super(key: key);

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
      body: Column(children: [
        _buildCustomNavBar(),
        Expanded(child: CustomGrid.makeItemGrid(items, refresh))
      ]),
    );
  }

  refresh() {
    setState(() {
      print(Global.cartItems.length);
    });
  }

  Widget _buildCustomNavBar() {
    return Container(
      height: 45,
      decoration: const BoxDecoration(color: primary),
      child: ListView.builder(
        itemBuilder: (context, index) => _buildNavTitle(index, tags[index]),
        itemCount: tags.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildNavTitle(index, Tag tag) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Text(
                  tag.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Container(
                  width: 40,
                  height: 2,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? accent : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
