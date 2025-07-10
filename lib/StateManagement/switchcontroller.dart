import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Switchcontroller extends GetxController {
  RxBool isSwitched = false.obs;

  void toggleSwitch() {
    isSwitched.value = !isSwitched.value;
  }
}
