import 'dart:io';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:sportify/widget/input_text_fild.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class EditProfile extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final String fname, language, email, phoneNo, Country;

  const EditProfile(
      {Key? key,
      required this.fname,
      required this.language,
      required this.email,
      required this.phoneNo,
      // ignore: non_constant_identifier_names
      required this.Country})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state, library_private_types_in_public_api
  _EditProfileState createState() =>
      _EditProfileState(fname, language, email, phoneNo, Country);
}

class _EditProfileState extends State<EditProfile> {
  _EditProfileState(
      this.fname, this.language, this.email, this.phoneNo, this.Country);
  @override
  void initState() {
    super.initState();
    _firstnameController.text = fname;
    _langController.text = language;
    _phonenumberController.text = phoneNo;
    _emailController.text = email;
    _countryController.text = Country;
  }

  // ignore: non_constant_identifier_names
  String user_id = '';
  String name = '';

  final _firstnameController = TextEditingController();
  final _langController = TextEditingController();
  final _phonenumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _countryController = TextEditingController();
  String fname = '';
  String email = '';
  String phoneNo = '';
  String language = '';
  // ignore: non_constant_identifier_names
  String Country = '';
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

  TextEditingController controller = TextEditingController();
  String? selectedValue;
  String? selectCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppStyles.screenBackgroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Profile",
          style: AppStyles.appBarTitleTextStyle,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_backspace,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _selectedImage != null
                        ? Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: FileImage(_selectedImage!),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        : Image.asset(
                            ImageAssetPath.userImage,
                            fit: BoxFit.fill,
                            width: 150,
                            height: 150,
                            filterQuality: FilterQuality.high,
                          ),
                    Positioned(
                      left: 100,
                      child: InkWell(
                        onTap: _selectImage,
                        child: Image.asset(ImageAssetPath.editProfile,
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                            height: 25,
                            width: 25),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.sp),
              Text(
                'Your Name',
                style: AppStyles.activityJoinTabingText.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.sp),
              InputTextField(
                hintText: 'Your Name',
                controller: _firstnameController,
              ),
              SizedBox(height: 5.sp),
              Text(
                'Mobile',
                style: AppStyles.activityJoinTabingText.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.sp),
              InputTextField(
                hintText: 'Mobile',
                controller: _phonenumberController,
              ),
              SizedBox(height: 5.sp),
              Text(
                'Email Id',
                style: AppStyles.activityJoinTabingText.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.sp),
              InputTextField(
                hintText: 'XXXXXXXXXX',
                controller: _emailController,
              ),
              SizedBox(height: 15.sp),
              Text(
                'Country',
                style: AppStyles.activityJoinTabingText.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.sp),
              Container(
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
                child: TextFormField(
                  readOnly: true,
                  controller: _countryController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Country',
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      for (String item in items)
                                        ListTile(
                                          title: Text(
                                            item,
                                            style: AppStyles.smallTextStyle,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              _countryController.text = item;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                    ],
                                  ),
                                );
                              },
                            ).then((selectedValue) {
                              if (selectedValue != null) {
                                setState(() {
                                  _countryController.text = selectedValue;
                                });
                              }
                            });
                          },
                          child:
                              const Icon(Icons.keyboard_arrow_down_outlined))),
                ),
              ),
              SizedBox(height: 5.sp),
              Text(
                'Language',
                style: AppStyles.activityJoinTabingText.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Container(
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
                child: TextFormField(
                  readOnly: true,
                  controller: _langController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Language',
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      for (String item in items2)
                                        ListTile(
                                          title: Text(
                                            item,
                                            style: AppStyles.smallTextStyle,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              _langController.text = item;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                    ],
                                  ),
                                );
                              },
                            ).then((selectedValue) {
                              if (selectedValue != null) {
                                setState(() {
                                  _langController.text = selectedValue;
                                });
                              }
                            });
                          },
                          child:
                              const Icon(Icons.keyboard_arrow_down_outlined))),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.sp, 25.sp),
                      backgroundColor: AppStyles.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'EDIT',
                      style: AppStyles.sliderText.copyWith(
                          color: Colors.white,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> items = [
    'India',
    'Australia',
    'USA',
    'Dubai',
    'Canada',
    'japan'
  ];
  final List<String> items2 = ['Hindi', 'English', 'French', 'Urdu'];
}
