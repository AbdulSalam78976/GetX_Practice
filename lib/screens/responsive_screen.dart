import 'package:flutter/material.dart';

class Responsivescreen extends StatefulWidget {
  const Responsivescreen({super.key});

  @override
  State<Responsivescreen> createState() => _ResponsivescreenState();
}

class _ResponsivescreenState extends State<Responsivescreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height; // or Get.width
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive Screen")),

      body: Container(
        width: width * .4, // or Get.width
        height: height * .4,
        color: Colors.red,
      ),
    );
  }
}
