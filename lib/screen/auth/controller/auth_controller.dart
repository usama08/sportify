import 'dart:convert';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/Model/login_reponsemodel.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/controller/Apis/base_Urrl.dart';
import 'package:sportify/widget/show_toast.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  double? latitude;
  double? longitude;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController instituteId = TextEditingController();
  TextEditingController institutename = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  ///   ---- All Model Lists   ----  ///
  RxList<UserData> requestModellist = RxList<UserData>();

  /// ----  -----   password  ---- ///
  String generateRandomUpperCaseLetter() {
    // Generate a random uppercase letter
    final random = Random();
    const upperCaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return upperCaseLetters[random.nextInt(upperCaseLetters.length)];
  }

  String generateRandomSymbol() {
    // Generate a random symbol
    final random = Random();
    const symbols = '@\$#%&!';
    return symbols[random.nextInt(symbols.length)];
  }

  ///   ----   ///

  Future<void> getLocation(context) async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        // Permission is denied, request it again.
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        ToastWidget.show('Please Location Enabled', context,
            backgroundColor: AppColors.redColor);
        print('Location permissions are permanently denied.');
        return;
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);

        latitude = position.latitude;
        longitude = position.longitude;

        print('Latitude: $latitude, Longitude: $longitude');
      }
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  Future<void> loginApi() async {
    isLoading.value = true;
    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse('${Apis.logInApi}?');
    var body = json.encode({"email": email.text, "password": password.text});

    try {
      isLoading.value = true;
      var response = await http.post(url, headers: headers, body: body);
      update();
      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonResponse = json.decode(response.body);
        var userDataJson =
            jsonResponse['response']['userData']; // Accessing userData object
        var userData = UserData.fromJson(
            userDataJson); // Parsing userData object to UserData model

        requestModellist.value
            .assignAll([userData]); // Assigning userData to requestModellist
        print("response: ${userData.id}");
        var tokken = loginResponse.response.tokken;

        print('Token: $tokken');

        update();
        Future.delayed(const Duration(seconds: 1), () {
          Get.offAllNamed('/sportscreen');
        });
      } else {
        isLoading.value = false;
        // If response is not successful, print the reason phrase
        print('Failed: ${response.reasonPhrase}');
      }
    } catch (e) {
      isLoading.value = false;
      // If an error occurs during the request, print the error message
      print('Error: $e');
    }
  }

//  ---   ///
  ///  -- --  --  Login Api's   -----    ///
  // Future<void> loginApisUrl(BuildContext context) async {
  //   isLoading.value = true;
  //   update();
  //   try {
  //     var headers = {'Content-Type': 'application/json'};
  //     final response = await http.get(
  //       Uri.parse(
  //           "${Apis.logInApi}?email=${email.text}&password=${password.text}"),
  //       headers: headers,
  //     );

  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       print("response: ${response.body}");
  //       final List<dynamic> responseData = json.decode(response.body);

  //       if (responseData.isNotEmpty) {
  //         isLoading.value = false;
  //         update();
  //         Future.delayed(const Duration(seconds: 1), () {
  //           Get.offAllNamed('/sportscreen');
  //         });
  //       } else {
  //         isLoading.value = false;
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(
  //             content: Text('No User Record Found'),
  //           ),
  //         );
  //       }
  //     } else {
  //       isLoading.value = false;
  //       update();
  //       if (response.body ==
  //           "The user name or password provided is incorrect.") {
  //         print("The user name or password provided is incorrect.");
  //       } else {
  //         print("Failed: ${response.reasonPhrase}");
  //       }
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //     isLoading.value = false;
  //     update();
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('The user name or password provided is incorrect.'),
  //         duration: Duration(seconds: 2),
  //       ),
  //     );
  //   }
  // }
}
