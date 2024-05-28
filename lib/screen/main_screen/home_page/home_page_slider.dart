import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/hom_page.dart';

class HomePageSlider extends StatefulWidget {
  const HomePageSlider({super.key});

  @override
  State<HomePageSlider> createState() => _HomePageSliderState();
}

class _HomePageSliderState extends State<HomePageSlider> {
  var controller = Get.put(HomePageController());

  @override
  void initState() {
    super.initState();
    controller.sliderImageGetApi();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const CircularProgressIndicator();
      } else if (controller.sliderlist.isEmpty) {
        return const Text('No images found');
      } else {
        return CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            height: 150, // Adjust the height as needed
          ),
          items: controller.sliderlist.expand((sliderImage) {
            return sliderImage.sliderImages.map((imageUrl) {
              return Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error); // Placeholder for error
                },
              );
            });
          }).toList(),
        );
      }
    });
  }
}
