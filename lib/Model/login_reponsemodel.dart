class LoginResponse {
  final Response response;
  final String message;
  final bool success;
  final int statusCode;

  LoginResponse(
      {required this.response,
      required this.message,
      required this.success,
      required this.statusCode});

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

  Response({required this.tokken, required this.userData});

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
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      location: Location.fromJson(json['location']),
      id: json['_id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phonenumber'],
      status: json['status'],
      universityName: json['universityName'],
      universityId: json['universityId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
    );
  }
}

class Location {
  final String type;
  final List<double> coordinates;

  Location({required this.type, required this.coordinates});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json['type'],
      coordinates: List<double>.from(json['coordinates']),
    );
  }
}

// Sample response JSON
var jsonResponse = {
  "response": {
    "tokken":
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1Yjc2MjZlYjhlYTU4YWYxMTMwNTI1MCIsImVtYWlsIjoidGVzdEBnbWFpbC5jb20iLCJ1c2VybmFtZSI6IlVzYW1hIiwiaWF0IjoxNzA2NTQyMzczLCJleHAiOjE4MDEyMTUxNzN9.AR-Y7FFDRS2SyRWnsRj-qOB2hon80Zz4nj550kimNCk",
    "userData": {
      "location": {
        "type": "Point",
        "coordinates": [-73.97, 40.77]
      },
      "_id": "65b7626eb8ea58af11305250",
      "username": "Usama",
      "email": "test@gmail.com",
      "password":
          "\$2b\$10\$oVk7JC9MrGmd2dAxtxcU4.YR5kQF4xG5cJLGPMLGs9YXBYiUiin4u",
      "phonenumber": "+923028864928",
      "status": "non-verified",
      "universityName": "University of management and technology",
      "universityId": "f20109",
      "createdAt": "2024-01-29T08:31:42.251Z",
      "updatedAt": "2024-01-29T08:31:42.251Z",
      "__v": 0
    }
  },
  "message": "User Found",
  "success": true,
  "statusCode": 202
};

// Parsing the response
var loginResponse = LoginResponse.fromJson(jsonResponse);
