import 'package:get/get.dart';

class AppDrawerController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemTap(int index, String route) {
    selectedIndex.value = index;
    Get.toNamed(route);
  }

  void logout() {
    // Clear navigation stack and go to login
    Get.offAllNamed('/login');
  }
}