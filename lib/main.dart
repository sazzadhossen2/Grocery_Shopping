import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pizza/screen/first_screen.dart';

void main(){
  runApp(const Myapps());
}

class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen() ,
    );
  }
}
