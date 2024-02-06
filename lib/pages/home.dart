import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:flutter_swiper_3/flutter_swiper_3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        _buildTitleTaxBar("Tags"),
        Container(
          height: 150,
          child: Swiper(
              viewportFraction: 0.5,
              autoplay: true,
              scale: 0.5,
              itemBuilder: (context, index) =>
                  Image.asset("assets/images/${tags[index].image}"),
              itemCount: tags.length),
        ),
        const SizedBox(height: 20),
        _buildTitleTaxBar("Categories"),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2),
            itemBuilder: (context, index) => _buildCategoryCard(cats[index]),
            itemCount: cats.length,
          ),
        )
      ]),
    );
  }
}

Widget _buildCategoryCard(Product cat) {
  return Card(
    child: Image.asset(("assets/images/${cat.image}")),
  );
}

Widget _buildTitleTaxBar(text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: const BoxDecoration(
        color: secondary,
        borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
    child: Text(text,
        style: const TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: normal)),
  );
}
