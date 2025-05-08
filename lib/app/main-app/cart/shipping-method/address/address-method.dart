import 'package:eco_market/app/main-app/cart/shipping-method/main/controllers/shipping-method-controller.dart';
import 'package:eco_market/utils/utils.dart';
import 'package:eco_market/widgets/eco-button/eco-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';

import '../../../../../config/colors/colors.dart';

class AddressMethod extends StatelessWidget {
  AddressMethod({Key? key}) : super(key: key);
  final ShippingMethodController shippingMethodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PlacePicker(
              apiKey: 'AIzaSyBllJlHGaT_xpte1A-rYM36BNskYAKiYIQ',
              hintText: "Find a place ...",
              searchingText: "Please wait ...",
              selectText: "Select place",
              initialPosition: const LatLng(36.838150, 11.111593),
              useCurrentLocation: true,
              selectInitialPosition: true,
              usePinPointingSearch: true,
              usePlaceDetailSearch: true,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              ignoreLocationPermissionErrors: true,
              onPlacePicked: (PickResult result) {
                log.w(result.formattedAddress);
                /*setState(() {
                  selectedPlace = result;
                  _showPlacePickerInContainer = false;
                });*/
              },
              onTapBack: () {
                /*setState(() {
                  _showPlacePickerInContainer = false;
                });*/
              }),
        ),
        Row(
          children: [
            GetBuilder<ShippingMethodController>(
              builder: (_) => Switch(
                value: shippingMethodController.addressSaved,
                onChanged: (value) => shippingMethodController.saveAddress(),
                activeColor: AppColors.primary,
                inactiveThumbColor: AppColors.gray1,
              ),
            ),
            Text(
              'Save this address',
              style: TextStyle(
                fontSize: 12.sp,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: EcoButton(
            text: 'Confirm Address',
            onClick: () {
              shippingMethodController.nextPage(2);
              shippingMethodController.animatePayment();
            },
          ),
        )
      ],
    );
  }
}
