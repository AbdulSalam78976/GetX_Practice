import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> passwordController =
      TextEditingController().obs;
  final RxBool isLoading = false.obs;
  final RxBool isVisible = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        headers: {"x-api-key": "reqres-free-v1"},
        body: {
          "email": emailController.value.text,
          "password": passwordController.value.text,
        },
      );
      if (response.statusCode == 200) {
        print(response.statusCode);
        print('Response body: \\n${response.body}');
        final data = jsonDecode(response.body);
        Get.snackbar("Success", "Login successful");
        print(data);
      } else {
        print('Response body: \\n${response.body}');
        Get.snackbar("Error", "Login failed: \\n${response.body}");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error", "An error occurred");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }
}
