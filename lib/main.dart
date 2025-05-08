import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'app/eco_market-main-application.dart';
import 'config/colors/colors.dart';
import 'config/custom_loading_animation.dart';
import 'config/notification/notification.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureGlobalLoader();
  if (Platform.isAndroid) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  /// INITIALIZE FIREBASE
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// INITIALIZE STORAGE
  await GetStorage.init();
  dynamic isUserLoggedIn = await GetStorage().read('isLoggedIn');
  dynamic language = await GetStorage().read('language');

  if (language == null) {
    await GetStorage().write('language', 'fr');
  }

  /// CONFIGURE NOTIFICATIONS
  notification();

  /// MAIN FUNCTION
  runApp(EcoMarketMainApplication(
    isLoggedIn: isUserLoggedIn,
    language: language,
  ));
}

void configureGlobalLoader() {
  EasyLoading.instance
    ..animationStyle = EasyLoadingAnimationStyle.opacity
    ..displayDuration = const Duration(milliseconds: 5000)
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..indicatorColor = AppColors.white
    ..progressColor = Colors.transparent
    ..backgroundColor = AppColors.primary
    ..maskType = EasyLoadingMaskType.black
    ..textColor = AppColors.primary
    ..textStyle = const TextStyle(fontSize: 14, color: AppColors.white)
    ..userInteractions = false
    ..customAnimation = CustomAnimation();
}
