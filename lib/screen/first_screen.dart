import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza/screen/home_page.dart';

import '../utils/utils.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/images/fourth.png',
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Fast delivery at\n your doorstep',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Home delevery and online reservation \nSystem for resturents & cafe',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: () {
                  Get.offAll(()=>HomePage());
                },
                child: Text("Let's Explore",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColors)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
