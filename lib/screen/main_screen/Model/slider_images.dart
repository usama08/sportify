class SliderImagesResponse {
  final int status;
  final String message;
  final List<SliderImage> result;

  SliderImagesResponse(
      {required this.status, required this.message, required this.result});

  factory SliderImagesResponse.fromJson(Map<String, dynamic> json) {
    var resultList = json['result'] as List;
    List<SliderImage> sliderImages =
        resultList.map((item) => SliderImage.fromJson(item)).toList();

    return SliderImagesResponse(
      status: json['status'],
      message: json['message'],
      result: sliderImages,
    );
  }
}

class SliderImage {
  final String id;
  final List<String> sliderImages;
  final String identityId;
  final String title;
  final String description;
  final bool isActive;
  final String createdAt;
  final String updatedAt;
  final int v;

  SliderImage({
    required this.id,
    required this.sliderImages,
    required this.identityId,
    required this.title,
    required this.description,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory SliderImage.fromJson(Map<String, dynamic> json) {
    return SliderImage(
      id: json['_id'],
      sliderImages: List<String>.from(json['sliderimages']),
      identityId: json['identityId'],
      title: json['title'],
      description: json['description'],
      isActive: json['isActive'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
    );
  }
}
