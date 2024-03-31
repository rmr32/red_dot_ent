import 'package:red_dot_ent/utils/constants/exports.dart';

class OnHoverButtonController extends GetxController {
  static OnHoverButtonController get instance => Get.find();
  var isHovered = <String, RxBool>{
    '1': false.obs,
    '2': false.obs,
    '3': false.obs,
    '4': false.obs,
    '5': false.obs,
    '6': false.obs,
  };

  void onEnter(String buttonKey) {
    isHovered[buttonKey]?.value = true;
  }

  void onExit(String buttonKey) {
    isHovered[buttonKey]?.value = false;
  }
}
