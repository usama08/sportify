import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/Model/gamecategory_model.dart';
import 'package:sportify/Model/login_reponsemodel.dart';
import 'package:sportify/Model/university_list.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/controller/Apis/base_Urrl.dart';
import 'package:sportify/screen/auth/app_slider/slider_start.dart';
import 'package:sportify/screen/auth/login_screen/Model/auth_model.dart';
import 'package:sportify/screen/auth/sing_up/Model/signup_response.dart';
import 'package:sportify/screen/main_screen.dart';
import 'package:sportify/screen/main_screen/Model/demo.dart';
import 'package:sportify/screen/main_screen/Model/userinfo.dart';
import 'package:sportify/widget/show_toast.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  // ignore: prefer_typing_uninitialized_variables
  var tokken;
  File? file;
  // ignore: prefer_typing_uninitialized_variables
  var idimaage;
  // ignore: prefer_typing_uninitialized_variables
  var gender = 'male';
  // ignore: prefer_typing_uninitialized_variables
  var gamename = 'other';
  var userName = ''.obs;
  // ignore: prefer_typing_uninitialized_variables
  var ueremail;
  var verifyvalue = ''.obs;
  // ignore: prefer_typing_uninitialized_variables
  var preferceid;
  double? latitude;
  double? longitude;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController studentid = TextEditingController();
  TextEditingController institutename = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  var universityname = 'Select University/Sports Club';
  // ignore: prefer_typing_uninitialized_variables
  var universityID;
  // ignore: prefer_typing_uninitialized_variables
  var catgorygameID;
  var gamenameget = ''.obs;
  var namegameis = ''.obs;

  ///   ---- All Model Lists   ----  ///
  RxList<UserData> requestModellist = RxList<UserData>();
  RxList<AuthResult> loginlist = RxList<AuthResult>();
  RxList<UserCredentials> demo = RxList<UserCredentials>();

  RxList<University> universitylist = RxList<University>();
  RxList<SignupResult> userresponse = RxList<SignupResult>();
  RxList<UserInfo> userinfo = RxList<UserInfo>();

  RxList<Category> gamelist = RxList();

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

  ///   ---- Location   ///
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
      }
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  ///   ---------------  Login Apis   -------------  ///
  Future<void> loginApi(BuildContext context) async {
    isLoading.value = true;
    update();

    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse('${Apis.logInApi}?');
    var body = json
        .encode({"email": email.text.trim(), "password": password.text.trim()});

    try {
      var response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final dynamic resultData = responseData['result'];

        if (resultData is List) {
          final List<dynamic> responseDataList = resultData;
          loginlist.value = responseDataList
              .map((data) => AuthResult.fromJson(data))
              .toList();
          ToastWidget.show('Log in is Sucessful', context,
              backgroundColor: AppColors.redColor);
          isLoading.value = false;
          update();
        } else if (resultData is Map<String, dynamic>) {
          final AuthResult authResult = AuthResult.fromJson(resultData);
          loginlist.value = [authResult];
          print('identity${loginlist.value[0].identity}');

          print('identity${loginlist.value[0].token.toString()}');

          getUserInfo('${loginlist.value[0].identity.toString()}');
          ToastWidget.show('Log in is Sucessful', context,
              backgroundColor: AppColors.redColor);
          isLoading.value = false;

          update();
        } else {
          isLoading.value = false;
          update();
          throw Exception('Unexpected result type');
        }

        // Fetch user info
        // Assuming identity is the user ID

        // Fetch all categories
        await getAllCategories(context);

        Get.to(const MainPage());
        isLoading.value = false;
        update();
      } else {
        isLoading.value = false;
        update();

        ToastWidget.show('${response.reasonPhrase}', context,
            backgroundColor: AppColors.redColor);
        print('Failed: ${response.reasonPhrase}');
      }
    } catch (e) {
      isLoading.value = false;
      update();

      print('Failed: $e');

      ToastWidget.show('$e', context, backgroundColor: AppColors.redColor);
    }
  }

  /// ----   University list ---   ///
  Future<void> fetchUniversityList() async {
    isLoading.value = true;
    update();

    var url = Uri.parse('${Apis.getUnilist}?');

    try {
      var response = await http.post(url);
      if (response.statusCode == 201) {
        // Check for 200 OK, not 201 Created
        final List<dynamic> responseData = json.decode(response.body)['result'];
        universitylist.value =
            responseData.map((data) => University.fromJson(data)).toList();
        isLoading.value = false;
        update();
      } else {
        isLoading.value = false;
        update();
        print('Failed: ${response.reasonPhrase}');
      }
    } catch (e) {
      isLoading.value = false;
      update();
      print('Error: $e');
    }
  }

  ///   ----     Signup   ---    ///
  Future<void> signUpApi(BuildContext? context) async {
    isLoading.value = true;
    update();
    print('username: ${username.text}');
    print('email: ${email.text}');
    print('gender: ${gender.toString()}');
    print('preferenceId: ${catgorygameID.toString()}');
    print('password: ${password.text}');
    print('phonenumber: ${phoneNumber.text}');
    print('universityId: ${universityID.toString()}');
    print('universityName: ${universityname.toString()}');
    print('studentId: ${studentid.text}');
    print(
        'location: { "type": "Point", "coordinates": [$latitude, $longitude] }');
    print('hit1');
    var url = Uri.parse('${Apis.signUpApi}?');
    var headers = {
      'Content-Type': 'application/json',
    };
    var body = json.encode({
      "username": username.text,
      "email": email.text,
      "gender": gender.toString(),
      "preferenceId": catgorygameID.toString(),
      "password": password.text,
      "phonenumber": phoneNumber.text,
      "universityId": universityID.toString(),
      "universityName": universityname.toString(),
      "studentId": studentid.text,
      "location": {
        "type": "Point",
        "coordinates": [latitude, longitude]
      }
    });

    try {
      print('hit2');
      isLoading.value = true;
      var response = await http.post(url, headers: headers, body: body);
      var responseData = json.decode(response.body);
      var result = responseData['result'];
      update();
      if (response.statusCode == 201 || response.statusCode == 200) {
        print('ok done');
        // Assuming result is an object containing a single item
        var signupResult = SignupResult.fromJson(result);
        print('isID: ${signupResult.id}');
        // Assign the single signup result to userresponse.value
        idimaage = signupResult.id;
        print('idimage${idimaage.toString()}');
        userresponse.value = [signupResult];

        // Call the uploadImageToServer function
        // ignore: use_build_context_synchronously
        await uploadImageToServer(context!); // Pass context if needed

        isLoading.value = false;
        update();

        // Future.delayed(const Duration(seconds: 1), () {
        //   Get.offAllNamed('/sportscreen');
        // });
      } else {
        print('hit3');
        isLoading.value = false;
        update();
        // If response is not successful, print the reason phrase
      }
    } catch (e) {
      print('hit4');
      isLoading.value = false;
      update();
      // If an error occurs during the request, print the error message
      print('Error: $e');
    }
  }

  /// ----   Upload Image ---   ///
  Future<void> uploadImageToServer(BuildContext context) async {
    isLoading.value = true;
    update();
    print('pic${idimaage.toString()}');
    var uri = Uri.parse('${Apis.uploadimage}?id=${idimaage.toString()}');
    var request = http.MultipartRequest('POST', uri);
    request.files
        .add(await http.MultipartFile.fromPath('userimage', file!.path));
    try {
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 201 || response.statusCode == 200) {
        print('hit...1');
        ToastWidget.show(
          "image upload",
          context,
          backgroundColor: Color.fromARGB(255, 156, 240, 130),
        );

        print('mypic');
        print(await response.stream.bytesToString());
        isLoading.value = false;
        update();
        Get.to(() => const SliderStart());
      } else {
        print('hit...2');
        ToastWidget.show(
          "${response.reasonPhrase}",
          context,
          backgroundColor: AppColors.redColor,
        );
        print(response.reasonPhrase);
        isLoading.value = false;
        update();
      }
    } catch (e) {
      print('hit.....3');
      ToastWidget.show(
        "${e}",
        context,
        backgroundColor: AppColors.redColor,
      );
      isLoading.value = false;
      update();
      print('Error uploading image: $e');
    }
  }

// //  Home Insurance Coverage id  //
  void geUniversityID() {
    if (universityname != 'Select University/Sports Club') {
      var selectiveUniversity = universitylist.value.firstWhere(
        (univsityname) => univsityname.universityName == universityname,
      );
      universityID = selectiveUniversity.id;
    }
  }

//  -------   Get Game Category id  -----  ///
  void getgamecatgoryID() async {
    isLoading.value = false;
    update();
    if (gamename != 'other') {
      var selectgameCatgory = gamelist.value.firstWhere(
        // ignore: unrelated_type_equality_checks
        (gamenamelist) => gamenamelist.name == gamename.toString(),
      );
      print('${gamename}');
      catgorygameID = selectgameCatgory.id;
      print('id${catgorygameID.toString()}');
    }
  }

//  --------   Get Game name    ---- ///
  void getgameName() async {
    print('this is fun${gamenameget.value}');

    if (gamenameget.value != 'null') {
      var selectgameCatgory = gamelist.value.firstWhere(
        // ignore: unrelated_type_equality_checks
        (gamenamelist) => gamenamelist.id == gamenameget.value.toString(),
      );
      print('yyyyygame${gamename}');
      namegameis.value = selectgameCatgory.name;
      print('gamename${namegameis.toString()}');
    }
    update();
  }

//  -----  Get All Games Category ------   ///
  Future<void> getAllCategories(BuildContext context) async {
    isLoading.value = true;
    update();
    var url = Uri.parse('${Apis.getGamelist}?');

    try {
      var response = await http.post(url);

      if (response.statusCode == 201) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> categoriesData = responseData['result'];
        if (categoriesData.isNotEmpty) {
          gamelist.value =
              categoriesData.map((data) => Category.fromJson(data)).toList();
          isLoading.value = false;

          update();
        } else {
          isLoading.value = false;
          update();
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No Category Record Found'),
            ),
          );
        }
        print(await response.body);
      } else {
        isLoading.value = false;
        update();
        print('ok');

        print(response.reasonPhrase);
      }
    } catch (e) {
      isLoading.value = false;
      update();
      print('ok');

      print('Error: $e');
    }
  }

  Future<List<UserInfo>> getUserInfo(
    String id,
  ) async {
    isLoading.value = true;
    update();
    var url = Uri.parse(
        'https://sportify-api.testedu.online/identity/identityDetails?id=$id');

    var headers = {
      'Authorization': "${loginlist.value[0].token.toString()}",
      'Content-Type': 'application/json'
    };

    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final dynamic resultData = responseData['result'];
      print(resultData);
      final UserResult userinfo = UserResult.fromJson(resultData);
      ueremail = userinfo.identityId.email.toString();
      print('email ${userinfo.preferenceId}');
      userName.value = userinfo.identityId.username.toString();
      verifyvalue.value = userinfo.status.toString();
      gamenameget.value = userinfo.preferenceId;
      print('xxxgame${gamenameget.toString()}');
      isLoading.value = false;
      update();
      return [];
    } else {
      isLoading.value = false;
      update();
      throw Exception('Failed to load user information');
    }
  }
}
