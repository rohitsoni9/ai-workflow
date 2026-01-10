import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Agent'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  controller.welcomeMessage.value,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 40),
            _buildActionButton(context, 'Start Chat', controller.startChat),
            SizedBox(height: 20),
            _buildActionButton(context, 'View History', controller.viewHistory),
            SizedBox(height: 20),
            _buildActionButton(context, 'Settings', controller.settings),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, String title, VoidCallback onPressed) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          textStyle: TextStyle(fontSize: 18),
        ),
        child: Text(title),
      ),
    );
  }
}