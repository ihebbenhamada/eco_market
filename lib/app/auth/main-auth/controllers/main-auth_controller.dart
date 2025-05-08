import 'package:eco_market/app/main-app/main-app-screen.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';

class MainAuthController extends BaseController {
  intentEcoMarket() {
    Get.to(() => MainAppScreen());
  }
}
