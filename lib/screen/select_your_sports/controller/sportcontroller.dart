import 'package:get/get.dart';

class SportSelection extends GetxController {
  RxInt selectedFilterIndex = 0.obs;
  RxList<String> levelsection = RxList<String>([
    'Beginner',
    'Intermediate',
    'Advanced',
  ]);
}
