import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sportify/controller/Apis/base_Urrl.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
import 'package:sportify/screen/main_screen/Model/joinedlist.dart';
import 'package:sportify/screen/main_screen/Model/listing_tournament.dart';
import 'package:sportify/screen/main_screen/Model/slider_images.dart';

class HomePageController extends GetxController {
  var isLoading = false.obs;
  var authcontroller = Get.put(AuthController());
  RxList<Tournament> tournamentlist = RxList<Tournament>();
  RxList<SliderImage> sliderlist = RxList<SliderImage>();
  RxList<SliderImage> sliderimagelist = RxList<SliderImage>();
  RxList<TournamentResponse> joinedlist = RxList<TournamentResponse>();

  // ignore: prefer_typing_uninitialized_variables
  var tournmentid;
  // ignore: prefer_typing_uninitialized_variables
  var particepentid;
//-------          tournament list             ---------///
  Future<void> listTournaments() async {
    isLoading.value = true;
    update();

    print('token${authcontroller.loginlist[0].token.toString()}');
    print('response-1');
    var headers = {
      'Authorization': authcontroller.loginlist[0].token.toString(),
    };
    var uri = Uri.parse('${Apis.listingtournaments}?');

    try {
      var response = await http.get(uri, headers: headers);

      print('response-2');

      if (response.statusCode == 200) {
        print('response-3');
        final Map<String, dynamic> responseData = json.decode(response.body);
        final dynamic resultData = responseData['result'];

        if (resultData is List) {
          final List<dynamic> responseDataList = resultData;
          tournamentlist.value = responseDataList
              .map((data) => Tournament.fromJson(data))
              .toList();
          isLoading.value = false;
          update();
          print('iddddd${tournamentlist.value[2].id}');
          print('isactiveee${tournamentlist.value[0].isActive.toString()}');
        } else if (resultData is Map<String, dynamic>) {
          final Tournament authResult = Tournament.fromJson(resultData);
          tournamentlist.value = [authResult];
          isLoading.value = false;
        } else {
          isLoading.value = false;
          update();

          throw Exception('Unexpected result type');
        }
      } else {
        isLoading.value = false;
        update();
        print('response-4');
        print('Failed to fetch tournaments: ${response.reasonPhrase}');
      }
    } catch (e) {
      isLoading.value = false;
      update();
      print('response-5');
      print('Error: $e');
    }
  }

  // ---------------        Get image list path          -----------------------//

  Future<void> sliderImageGetApi() async {
    var headers = {
      'Authorization': authcontroller.loginlist[0].token.toString(),
    };

    var uri = Uri.parse('${Apis.getimagespath}?');

    try {
      var response = await http.get(uri, headers: headers);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final dynamic resultData = responseData['result'];
        if (resultData is List) {
          final List<dynamic> responseDataList = resultData;
          sliderlist.value = responseDataList
              .map((data) => SliderImage.fromJson(data))
              .toList();
          isLoading.value = false;
          update();
          print('images${sliderlist.value[0].sliderImages[0]}');
          getFilesApi(
              '${Apis.baseUrl}uploads/${sliderlist.value[0].sliderImages[0]}?');
        } else if (resultData is Map<String, dynamic>) {
          final SliderImage authResult = SliderImage.fromJson(resultData);
          sliderlist.value = [authResult];
          isLoading.value = false;
        } else {
          isLoading.value = false;
          update();

          throw Exception('Unexpected result type');
        }
        print(jsonDecode(response.body));
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // ---------------     Get All images using path        -----------  ///

  Future<void> getFilesApi(String fileUrl) async {
    try {
      var request = http.Request('GET', Uri.parse(fileUrl));
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  /// join tournament Api
  Future<void> jointornamentapi(String tournamentId) async {
    isLoading = true.obs;

    try {
      var headers = {
        'Authorization': authcontroller.loginlist[0].token.toString(),
        // Add any other headers if required
      };
      final uri = Uri.parse(
          '${Apis.jointournaments}?tournamentId=${tournamentId.toString()}&participantId=${authcontroller.loginlist.value[0].identity.toString()}');

      final response = await http.post(
        uri,
        headers: headers,
      );

      isLoading = false.obs;

      if (response.statusCode == 201 || response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData != null) {
          joinedlist.value = [TournamentResponse.fromJson(responseData)];
          joinedlist.value[0].data.joinedPeople.toString();
          print(json.decode(response.body)); // If the response is JSON
        } else {
          print('Failed to join tournament: Response data is null');
        }
      } else {
        print('Failed to join tournament: ${response.reasonPhrase}');
      }
    } catch (e) {
      isLoading = false.obs;
      print('Error joining tournament: $e');
    }
  }
}
