import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/main_screen.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:sportify/widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
        children: [
          SizedBox(
            height: 200, // Adjust the height as needed
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                  child: Image.asset(
                    ImageAssetPath.login,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    filterQuality: FilterQuality.high,
                  ), // Replace with your image
                ),
                Positioned(
                  top: 40,
                  left: 20, // Set left to 0 to align to the left side
                  right: 25, // Set right to 0 to align to the right side
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
                          'Add Product',
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
                  left: 15, // Set left to 0 to align to the left side
                  right: 25, // Set right to 0 to align to the right side
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
                  left: 0, // Set left to 0 to align to the left side
                  right: 0, // Set right to 0 to align to the right side
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
                              child: DropdownButton<SelectVenueListDataModel>(
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: AppStyles.black,
                                ),
                                hint: _bankChoose != null
                                    ? Text(
                                        _bankChoose!.venueName,
                                      )
                                    : const Text(
                                        "Select Venue",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                items: bankDataList.map<
                                    DropdownMenuItem<SelectVenueListDataModel>>(
                                  (SelectVenueListDataModel value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value.venueName),
                                    );
                                  },
                                ).toList(),
                                isExpanded: true,
                                isDense: true,
                                onChanged: (SelectVenueListDataModel?
                                    newSelectedBank) {
                                  _onDropDownItemSelected(newSelectedBank!);
                                },
                                value: _bankChoose,
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
                  'Product Name',
                  style: AppStyles.sliderText.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextField(hintText: 'Product Name'),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Product Image',
                  style: AppStyles.sliderText.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
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
                  child: Row(
                    children: [
                      InkWell(
                        onTap: _selectImage,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 25,
                            width: 90,
                            decoration: BoxDecoration(
                                color: AppStyles.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(child: Text('Choose file')),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      _selectedImage != null
                          ? Text(_selectedImage!.path.split('/').last)
                          : const Text('Select image'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Product Description',
                  style: AppStyles.sliderText.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextField(hintText: 'Product Description'),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Product Price',
                  style: AppStyles.sliderText.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextField(hintText: 'Product Price'),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: AppButton(
                    onClicked: () {
                      Get.offAll(() => const MainPage());
                    },
                    background: AppStyles.primary,
                    text: 'ADD'),
              )
            ],
          ),
        ],
      ),
    );
  }

  File? _selectedImage;

  Future<void> _selectImage() async {
    final picker = ImagePicker();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image Source'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('Gallery'),
                  onTap: () async {
                    Navigator.pop(context);
                    // ignore: deprecated_member_use
                    final pickedImage = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (pickedImage != null) {
                      setState(() {
                        _selectedImage = File(pickedImage.path);
                      });
                    }
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                GestureDetector(
                  child: const Text('Camera'),
                  onTap: () async {
                    Navigator.pop(context);
                    // ignore: deprecated_member_use
                    final pickedImage = await picker.pickImage(
                      source: ImageSource.camera,
                    );
                    if (pickedImage != null) {
                      setState(() {
                        _selectedImage = File(pickedImage.path);
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onDropDownItemSelected(SelectVenueListDataModel newSelectedBank) {
    setState(() {
      _bankChoose = newSelectedBank;
    });
  }

  SelectVenueListDataModel? _bankChoose;

  List<SelectVenueListDataModel> bankDataList = [
    SelectVenueListDataModel("Venue1"),
    SelectVenueListDataModel("Venue2"),
    SelectVenueListDataModel("Venue3"),
    SelectVenueListDataModel("Venue4"),
    SelectVenueListDataModel("Venue5"),
    SelectVenueListDataModel("Venue6"),
  ];
}

class SelectVenueListDataModel {
  String venueName;

  SelectVenueListDataModel(this.venueName);
}
