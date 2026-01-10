import 'package:get/get.dart';

class HomeController extends GetxController {
  var welcomeMessage = "Welcome to AI Agent".obs;
  var isLoading = false.obs;

  void setLoading(bool value) {
    isLoading.value = value;
  }

  // Placeholder for future AI agent actions
  void startChat() {
    print("Start Chat button pressed");
    // Implement chat initiation logic
  }

  void viewHistory() {
    print("View History button pressed");
    // Implement view history logic
  }

  void settings() {
    print("Settings button pressed");
    // Implement settings navigation logic
  }
}