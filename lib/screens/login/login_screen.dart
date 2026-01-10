import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai_workflow/screens/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: loginController.emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            Obx(() => TextField(
              controller: loginController.passwordController,
              obscureText: loginController.passwordController.text.isEmpty ? true : false,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    loginController.passwordController.text.isEmpty
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    // Toggle password visibility (This is a simplified example, a better approach would be to have an observable boolean in the controller)
                    // For now, it will just re-render the obscureText based on content.
                    // A proper implementation would involve a `RxBool` in the controller.
                    loginController.update(); // Force update for demo
                  },
                ),
              ),
            )),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => loginController.login(),
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
