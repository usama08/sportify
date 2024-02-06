class LoginResponse {
  final Response? response;
  final String message;
  final bool success;
  final int statusCode;

  LoginResponse({
    required this.response,
    required this.message,
    required this.success,
    required this.statusCode,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      response: Response.fromJson(json['response']),
      message: json['message'],
      success: json['success'],
      statusCode: json['statusCode'],
    );
  }
}

class Response {
  final String tokken;
  final UserData userData;

  Response({
    required this.tokken,
    required this.userData,
  });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      tokken: json['tokken'],
      userData: UserData.fromJson(json['userData']),
    );
  }
}

class UserData {
  final Location location;
  final String id;
  final String username;
  final String email;
  final String password;
  final String phoneNumber;
  final String status;
  final String universityName;
  final String universityId;
  final String createdAt;
  final String updatedAt;
  final int v;
  final String skillLevel;

  UserData({
    required this.location,
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.status,
    required this.universityName,
    required this.universityId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.skillLevel,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      location: Location.fromJson(json['location']),
      id: json['_id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phonenumber'] ?? '',
      status: json['status'],
      universityName: json['universityName'],
      universityId: json['universityId'] ?? '',
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
      skillLevel: json['skillLevel'] ?? '',
    );
  }
}

class Location {
  final String type;
  final List<double> coordinates;

  Location({
    required this.type,
    required this.coordinates,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json['type'],
      coordinates:
          List<double>.from(json['coordinates'].map((x) => x.toDouble())),
    );
  }
}
