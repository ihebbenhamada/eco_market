import 'package:eco_market/app/auth/main-auth/screen/main-auth-screen.dart';
import 'package:eco_market/config/image_urls/image_urls.dart';
import 'package:get/get.dart';

import '../../../config/controllerConfig/base_controller.dart';

class IntroController extends BaseController {
  int currentPage = 0;
  List<Map<String, String>> introData = [
    {"text": "Welcome to Eco Market, Let’s shop!", "image": AppImages.intro1},
    {
      "text": "We help people conect with store \naround Kelibia",
      "image": AppImages.intro2
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": AppImages.intro3
    },
  ];
  changePage(int value) {
    currentPage = value;
    update();
  }

  handleClickStart() {
    Get.to(() => MainAuthScreen());
  }
}
