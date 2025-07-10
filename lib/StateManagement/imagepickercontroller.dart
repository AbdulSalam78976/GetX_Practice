import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:typed_data';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;
  Rx<Uint8List?> imageBytes = Rx<Uint8List?>(null);

  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      imagePath.value = pickedFile.path.toString();
      if (kIsWeb) {
        imageBytes.value = await pickedFile.readAsBytes();
      } else {
        imageBytes.value = null;
      }
    } else {
      Get.snackbar('Error', 'No image selected');
    }
  }
}
