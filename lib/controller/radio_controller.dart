// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class MyRadioController extends GetxController {
  var selectedRadio = 2.obs; // Observe changes to the selected radio

  void changeSelectedRadio(int value) {
    selectedRadio.value = value;
  }
}