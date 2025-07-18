// import 'package:get/get.dart';
// import 'package:geolocator/geolocator.dart';
//
// import '../utils/Helpers/location_helper.dart';
//
//
// class LoactionController extends GetxController {
//   RxString location = "Fetching location...".obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchUserLocation();
//   }
//
//   Future<void> fetchUserLocation() async {
//     try {
//       Position position = await LocationService.getCurrentLocation();
//       location.value =
//       "Lat: ${position.latitude}, Long: ${position.longitude}";
//     } catch (e) {
//       location.value = "Error: $e";
//     }
//   }
// }
import 'package:get/get.dart';

class LocationController extends GetxController {
  var location = ''.obs;

  // Example setter method
  void setLocation(String value) {
    location.value = value;
  }
}
