import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/main_screen.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:sportify/widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class AddVenueDetails extends StatefulWidget {
  const AddVenueDetails({Key? key}) : super(key: key);

  @override
  State<AddVenueDetails> createState() => _AddVenueDetailsState();
}

class _AddVenueDetailsState extends State<AddVenueDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                  child: Image.asset(
                    ImageAssetPath.login,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  right: 25,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Add Service In Venue',
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 105,
                  left: 15,
                  right: 25,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Select Venue',
                      style: AppStyles.sliderText.copyWith(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: FormField(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 17),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelText: 'English',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: AppStyles.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: AppStyles.white,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: AppStyles.white,
                                ),
                              ),
                              labelStyle: const TextStyle(
                                color: AppStyles.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                              hintStyle: const TextStyle(
                                color: AppStyles.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child:
                                  DropdownButton<AddServiceVenueListDataModel>(
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: AppStyles.black,
                                ),
                                hint: _addServicevenue != null
                                    ? Text(
                                        _addServicevenue!.venue_service_name,
                                      )
                                    : const Text(
                                        "Select Venue",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                items: addServicevenueDataList.map<
                                    DropdownMenuItem<
                                        AddServiceVenueListDataModel>>(
                                  (AddServiceVenueListDataModel value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value.venue_service_name),
                                    );
                                  },
                                ).toList(),
                                isExpanded: true,
                                isDense: true,
                                onChanged: (AddServiceVenueListDataModel?
                                    newSelectedBank) {
                                  _onDropDownItemSelected(newSelectedBank!);
                                },
                                value: _addServicevenue,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Add Service',
                  style: AppStyles.sliderText.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextField(hintText: 'Add Service'),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Service Name',
                  style: AppStyles.sliderText.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextField(hintText: 'Service Name'),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: AppButton(
                    onClicked: () {
                      Get.offAll(const MainPage());
                    },
                    background: AppStyles.primary,
                    text: 'ADD'),
              )
            ],
          ),
        ],
      ),
    ));
  }

  void _onDropDownItemSelected(AddServiceVenueListDataModel newSelectedBank) {
    setState(() {
      _addServicevenue = newSelectedBank;
    });
  }

  AddServiceVenueListDataModel? _addServicevenue;

  List<AddServiceVenueListDataModel> addServicevenueDataList = [
    AddServiceVenueListDataModel("Venue1"),
    AddServiceVenueListDataModel("Venue2"),
    AddServiceVenueListDataModel("Venue3"),
    AddServiceVenueListDataModel("Venue4"),
    AddServiceVenueListDataModel("Venue5"),
    AddServiceVenueListDataModel("Venue6"),
  ];
}

class AddServiceVenueListDataModel {
  // ignore: non_constant_identifier_names
  String venue_service_name;

  AddServiceVenueListDataModel(this.venue_service_name);
}
