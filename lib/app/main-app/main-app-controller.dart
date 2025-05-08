import '../../../config/controllerConfig/base_controller.dart';

class MainAppController extends BaseController {
  int selectedIndex = 0;
  route(int index) {
    selectedIndex = index;
    update();
  }
}
