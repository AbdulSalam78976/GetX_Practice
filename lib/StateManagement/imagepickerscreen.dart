import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/StateManagement/imagepickercontroller.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

class Imagepickerscreen extends StatelessWidget {
  const Imagepickerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use GetX dependency management
    final ImagePickerController imagePickerController = Get.put(
      ImagePickerController(),
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            final imagePath = imagePickerController.imagePath.value;
            final imageBytes = imagePickerController.imageBytes.value;
            if (imagePath.isEmpty &&
                (imageBytes == null ||
                    (imageBytes is Uint8List && imageBytes.isEmpty))) {
              return const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/placeholder.png',
                ), // Make sure you have a placeholder image
              );
            } else if (kIsWeb && imageBytes != null && imageBytes.isNotEmpty) {
              return CircleAvatar(
                radius: 60,
                backgroundImage: MemoryImage(imageBytes),
              );
            } else if (!kIsWeb && imagePath.isNotEmpty) {
              return CircleAvatar(
                radius: 60,
                backgroundImage: Image.file(File(imagePath)).image,
              );
            } else {
              return const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/placeholder.png'),
              );
            }
          }),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              imagePickerController.pickImage();
            },
            child: const Text("Pick Image"),
          ),
        ],
      ),
    );
  }
}
