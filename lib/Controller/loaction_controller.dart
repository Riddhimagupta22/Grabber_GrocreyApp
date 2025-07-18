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
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationController extends GetxController {
  var location = 'Fetching location...'.obs;

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }

  Future<void> getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        location.value = "Location services are disabled.";
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          location.value = "Location permission denied.";
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        location.value = "Location permission permanently denied.";
        return;
      }

      Position pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      List<Placemark> placemarks =
      await placemarkFromCoordinates(pos.latitude, pos.longitude);

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        location.value = '${place.locality}, ${place.administrativeArea}';
      } else {
        location.value = "Unknown location";
      }
    } catch (e) {
      location.value = "Error getting location: $e";
    }
  }
}

