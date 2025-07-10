import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_x_practice/StateManagement/switchcontroller.dart';
import 'package:get/get.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  final Switchcontroller _switchController = Get.put(Switchcontroller());
  @override
  Widget build(BuildContext context) {
    print("whole scaffold built");
    return Scaffold(
      appBar: AppBar(title: const Text("Switch Example")),
      body: Center(
        child: Obx(
          () => Switch(
            value: _switchController.isSwitched.value,
            onChanged: (value) {
              print("switch changed");
              _switchController.toggleSwitch();
            },
          ),
        ),
      ),
    );
  }
}
