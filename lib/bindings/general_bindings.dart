import 'package:red_dot_ent/common/controllers/navigation_controller.dart';
import 'package:red_dot_ent/features/music/controllers/playlist_controller.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    /// -- Core --- ///
    // Get.put(NetworkManager());

    // /// -- Product --- ///
    // Get.put(CheckoutController());
    // Get.put(VariationController());
    // Get.put(ImagesController());

    // /// -- Other --- ///
    // Get.put(AddressController());

    /// --- UI/UX Elements --- ///
    // Get.put(SizeController());
    Get.put(OnHoverButtonController());
    Get.put(NavigationController());
    Get.put(PlaylistController());
  }
}
