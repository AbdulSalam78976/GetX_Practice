import 'package:get/state_manager.dart';

class Favouritecontroller extends GetxController {
  RxList<int> favouriteList = <int>[].obs;

  void addFavourite(int index) {
    if (favouriteList.contains(index)) {
      favouriteList.remove(index);
    } else {
      favouriteList.add(index);
    }
  }
}
