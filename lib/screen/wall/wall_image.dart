import 'package:sportify/constants/asset_path.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';

class WallImageList extends StatefulWidget {
  const WallImageList({Key? key}) : super(key: key);

  @override
  State<WallImageList> createState() => _WallImageListState();
}

class _WallImageListState extends State<WallImageList> {
  List<String> images = [
    ImageAssetPath.gallary1,
    ImageAssetPath.gallary2,
    ImageAssetPath.gallary3,
    ImageAssetPath.gallary2,
    ImageAssetPath.gallary1,
  ];

  bool showAllImages = false;

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
                      setState(() {});
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
                      setState(() {});
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

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemCount: showAllImages ? images.length + 1 : 3,
      itemBuilder: (BuildContext context, int index) {
        if (!showAllImages && index == 2) {
          return InkWell(
            onTap: () {
              setState(() {
                showAllImages = true;
              });
            },
            child: SizedBox(
              height: 150,
              width: 130,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                    height: 150,
                    width: 130,
                    filterQuality: FilterQuality.high,
                  ),
                  Center(
                    child: Text(
                      '+${images.length - 3}',
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (index == images.length) {
          return InkWell(
            onTap: _selectImage,
            child: Container(
              color: Colors.white,
              height: 150,
              width: 130,
              child: Center(
                child: Image.asset(
                  ImageAssetPath.addNewImage,
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          );
        } else {
          return Image.asset(
            images[index],
            fit: BoxFit.fill,
          );
        }
      },
    );
  }
}
