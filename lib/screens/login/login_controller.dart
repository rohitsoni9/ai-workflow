import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (emailController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter your email',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }
    if (passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please enter your password',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }

    // Basic login logic (for demonstration)
    if (emailController.text == 'test@example.com' &&
        passwordController.text == 'password') {
      Get.snackbar('Success', 'Login Successful!',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green);
      // Navigate to home screen or perform other actions
    } else {
      Get.snackbar('Error', 'Invalid credentials',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}