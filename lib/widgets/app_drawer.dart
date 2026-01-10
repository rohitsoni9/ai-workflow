
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai_agent/controllers/drawer_controller.dart'; // Assuming this path

class AppDrawer extends StatelessWidget {
  final AppDrawerController _drawerController = Get.put(AppDrawerController());

  AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'AI Agent',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Obx(
            () => ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: _drawerController.selectedIndex.value == 0,
              onTap: () {
                _drawerController.onItemTap(0, '/home'); // Assuming '/home' is your home route
              },
            ),
          ),
          Obx(
            () => ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('Start Chat'),
              selected: _drawerController.selectedIndex.value == 1,
              onTap: () {
                _drawerController.onItemTap(1, '/chat'); // Assuming '/chat' is your chat route
              },
            ),
          ),
          Obx(
            () => ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              selected: _drawerController.selectedIndex.value == 2,
              onTap: () {
                _drawerController.onItemTap(2, '/history'); // Assuming '/history' is your history route
              },
            ),
          ),
          Obx(
            () => ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              selected: _drawerController.selectedIndex.value == 3,
              onTap: () {
                _drawerController.onItemTap(3, '/settings'); // Assuming '/settings' is your settings route
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              _drawerController.logout();
            },
          ),
        ],
      ),
    );
  }
}
