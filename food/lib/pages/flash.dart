import 'package:flutter/material.dart';
import 'package:food/helpers/trianglePainter.dart';
import 'package:food/utils/api.dart';
import 'package:food/utils/constants.dart';

class Flash extends StatefulWidget {
  const Flash({Key? key}) : super(key: key);

  @override
  State<Flash> createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  loadInitialData() async {
    var catBol = await Api.getAllCats();
    var subBol = await Api.getAllSubs();
    var tagBol = await Api.getAllTags();
    if (catBol && subBol && tagBol) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      print("Data Loading Error");
    }
  }

  @override
  void initState() {
    super.initState();
    loadInitialData();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: TrianglePainter(size),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130, left: 30),
            child: const Text(
              "Food Monkey",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors
                    .black, // Replace 'normal' with a valid color, e.g., Colors.black
              ),
            ),
          ),
          Center(
              child: Image.asset("assets/images/FoodMonkey.png", scale: 1.5)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircularProgressIndicator(
                  backgroundColor: accent,
                  valueColor: AlwaysStoppedAnimation(normal),
                ),
                SizedBox(height: 150)
              ],
            ),
          )
        ],
      ),
    );
  }
}
