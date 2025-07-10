import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/screens/screen_two.dart';

class ScreenOne extends StatefulWidget {
  final String title;

  const ScreenOne({super.key, required this.title});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen One")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.to(ScreenTwo());
            },
            child: const Text("Go to Screen Two"),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Go Back"),
          ),

          SizedBox(height: 50),
          Text(Get.arguments[0], style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
