import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/screens/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // Get.to(const ScreenOne()); without using route names
              //Get.to(ScreenOne(title: "Text From Home"));

              Get.toNamed("/screenone", arguments: ["Text From Home"]);
            },
            child: const Text("Go to Screen One"),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text("GETX"),
              subtitle: const Text("GETX DIALOG"),
              trailing: IconButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "Update Name",
                    titlePadding: const EdgeInsets.only(top: 20),
                    middleText: "Enter name",
                    content: TextField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(30),
                    textConfirm: "Update",
                    textCancel: "Cancel",
                    onConfirm: () {
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      Get.back();
                    },
                  );
                },
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text("GetX"),
              subtitle: const Text("GETX BOTTOM SHEET"),
              trailing: IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 300,
                      color: Colors.white,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text("Light Mode"),
                            onTap: () => Get.changeTheme(ThemeData.light()),
                            leading: const Icon(Icons.light_mode_outlined),
                          ),
                          ListTile(
                            title: Text("Dark Mode"),
                            onTap: () => Get.changeTheme(ThemeData.dark()),
                            leading: const Icon(Icons.dark_mode_outlined),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "HI There",
            "Welcome to GetX",
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            snackPosition: SnackPosition.TOP,
            backgroundGradient: const LinearGradient(
              colors: [Colors.red, Colors.purple],
            ),
          );
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Welcome to GetX")));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
