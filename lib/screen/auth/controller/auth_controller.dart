import 'dart:convert';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/Model/login_reponsemodel.dart';
import 'package:sportify/Model/university_list.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/controller/Apis/base_Urrl.dart';
import 'package:sportify/screen/select_your_sports/sport_select_screen.dart';
import 'package:sportify/widget/show_toast.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var tokken;

  double? latitude;
  double? longitude;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController instituteId = TextEditingController();
  TextEditingController institutename = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  var universityname = 'Select University';

  ///   ---- All Model Lists   ----  ///
  RxList<UserData> requestModellist = RxList<UserData>();
  RxList<University> universitylist = RxList<University>();

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

  Future<void> loginApi(BuildContext context) async {
    isLoading.value = true;
    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse('${Apis.logInApi}?');
    var body = json.encode({"email": email.text, "password": password.text});

    try {
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

        tokken = jsonResponse['response']['tokken'];

        update();
        isLoading.value = false;
        Get.to(const SportSelectScreen());
      } else {
        isLoading.value = false;
        // ignore: use_build_context_synchronously
        ToastWidget.show('${response.reasonPhrase}', context,
            backgroundColor: AppColors.redColor);
        // If response is not successful, print the reason phrase
        print('Failed: ${response.reasonPhrase}');
      }
    } catch (e) {
      isLoading.value = false;
      // ignore: unnecessary_brace_in_string_interps, use_build_context_synchronously
      ToastWidget.show('${e}', context, backgroundColor: AppColors.redColor);
    }
  }

  /// ----   university list ---   ///
  Future<void> fetchUniversityList() async {
    var url = Uri.parse(
        'https://21e5-95-111-235-167.ngrok-free.app/university/universities');
    var headers = {
      'Authorization':
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1YjdkNmZmYjhlYTU4YWYxMTMwNTI1NCIsImVtYWlsIjoic3BvcnRmeUBnbWFpbC5jb20iLCJ1c2VybmFtZSI6InNhbWEiLCJpYXQiOjE3MDcxNTY4MDcsImV4cCI6MTgwMTgyOTYwN30.8r0Rjo43RZrwO6NPUeOHAl0DQCT5EVx2TXYzlnhX57U"
    };

    try {
      var response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        final List<dynamic> responseData =
            json.decode(response.body)['response'];
        universitylist.value =
            responseData.map((data) => University.fromJson(data)).toList();
      } else {
        print('Failed: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  ///   ----     Signup   ---    ///
  Future<void> signUpApi() async {
    isLoading.value = true;
    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse('${Apis.signUpApi}?');
    var body = json.encode({
      "username": username.text,
      "email": email.text,
      "password": password.text,
      "phonenumber": phoneNumber.text,
      "universityId": instituteId.text,
      "universityName": institutename.text,
      "location": {
        "type": "Point",
        "coordinates": [latitude, longitude]
      }
    });

    try {
      isLoading.value = true;
      var response = await http.post(url, headers: headers, body: body);
      update();
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("ok");
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

  void makeSignUpRequest() async {
    var headers = {'Content-Type': 'application/json'};
    var url =
        Uri.parse('https://21e5-95-111-235-167.ngrok-free.app/user/signup');

    var request = http.MultipartRequest('POST', url);
    request.fields.addAll({
      'username': 'usama1',
      'email': 'usama@gmail.com',
      'password': 'QW@erty58',
      'phonenumber': '03028864982',
      'universityId': 'f6uiotcc4501',
      'preference': 'cricekt',
      'gender': 'male',
      'universityName': 'University of management and technology',
      'location[type]': 'Point',
      'location[coordinates][]': '-73.97',
      'location[coordinates][]': '40.77',
    });

    // Replace 'imagename' and 'file_path' with your image field name and file path
    request.files.add(await http.MultipartFile.fromPath('imagename', 'C/Path'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print("print1");
    if (response.statusCode == 200) {
      print("print3\2");
      print(await response.stream.bytesToString());
    } else {
      print("print3");
      print(response.reasonPhrase);
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
