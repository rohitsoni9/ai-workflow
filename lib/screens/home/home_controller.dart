import 'package:get/get.dart';

class HomeController extends GetxController {
  var welcomeMessage = "Welcome to AI Agent".obs;
  var isLoading = false.obs;

  void setLoading(bool value) {
    isLoading.value = value;
  }

  // Placeholder for future AI agent actions
  void startChat() {
    // Implement chat initiation logic
    print("Start Chat button pressed");
  }

  void viewHistory() {
    // Implement view history logic
    print("View History button pressed");
  }

  void settings() {
    // Implement settings navigation logic
    print("Settings button pressed");
  }
}