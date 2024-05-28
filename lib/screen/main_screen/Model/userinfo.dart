import 'dart:convert';

// Function to parse JSON string to list of UserInfo objects
List<UserInfo> userInfoFromJson(String str) =>
    List<UserInfo>.from(json.decode(str).map((x) => UserInfo.fromJson(x)));

// Function to convert list of UserInfo objects to JSON string
String userInfoToJson(List<UserInfo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// UserInfo class representing the main structure of the JSON response
class UserInfo {
  final String status;
  final String message;
  final UserResult result;

  UserInfo({
    required this.status,
    required this.message,
    required this.result,
  });

  // Factory method to create UserInfo object from JSON map
  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      status: json["status"] as String? ?? '',
      message: json["message"] as String? ?? '',
      result: UserResult.fromJson(json["result"] ?? {}),
    );
  }

  // Method to convert UserInfo object to JSON map
  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": result.toJson(),
      };
}

// UserResult class representing the 'result' field in the JSON response
class UserResult {
  final Location location;
  final String id;
  final String phonenumber;
  final String status;
  final String gender;
  final String skillLevel;
  final String universityId;
  final IdentityId identityId;
  final String preferenceId;
  final String studentId;
  final String createdAt;
  final String updatedAt;
  final int v;

  UserResult({
    required this.location,
    required this.id,
    required this.phonenumber,
    required this.status,
    required this.gender,
    required this.skillLevel,
    required this.universityId,
    required this.identityId,
    required this.preferenceId,
    required this.studentId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  // Factory method to create UserResult object from JSON map
  factory UserResult.fromJson(Map<String, dynamic> json) {
    return UserResult(
      location: Location.fromJson(json["location"] ?? {}),
      id: json["_id"] as String? ?? '',
      phonenumber: json["phonenumber"] as String? ?? '',
      status: json["status"] as String? ?? '',
      gender: json["gender"] as String? ?? '',
      skillLevel: json["skillLevel"] as String? ?? '',
      universityId: json["universityId"] as String? ?? '',
      identityId: IdentityId.fromJson(json["identityId"] ?? {}),
      preferenceId: json["preferenceId"] as String? ?? '',
      studentId: json["studentId"] as String? ?? '',
      createdAt: json["createdAt"] as String? ?? '',
      updatedAt: json["updatedAt"] as String? ?? '',
      v: json["__v"] as int? ?? 0,
    );
  }

  // Method to convert UserResult object to JSON map
  Map<String, dynamic> toJson() => {
        "location": location.toJson(),
        "_id": id,
        "phonenumber": phonenumber,
        "status": status,
        "gender": gender,
        "skillLevel": skillLevel,
        "universityId": universityId,
        "identityId": identityId.toJson(),
        "preferenceId": preferenceId,
        "studentId": studentId,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}

// Location class representing the 'location' field in the JSON response
class Location {
  final String type;
  final List<double> coordinates;

  Location({
    required this.type,
    required this.coordinates,
  });

  // Factory method to create Location object from JSON map
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json["type"] as String? ?? '',
      coordinates: List<double>.from(
          (json["coordinates"] as List<dynamic>?)?.map((x) => x.toDouble()) ??
              []),
    );
  }

  // Method to convert Location object to JSON map
  Map<String, dynamic> toJson() => {
        "type": type,
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}

// IdentityId class representing the 'identityId' field in the JSON response
class IdentityId {
  final String id;
  final String username;
  final String email;
  final String password;
  final String role;
  final String status;
  final String createdAt;
  final String updatedAt;
  final int v;

  IdentityId({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.role,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  // Factory method to create IdentityId object from JSON map
  factory IdentityId.fromJson(Map<String, dynamic> json) {
    return IdentityId(
      id: json["_id"] as String? ?? '',
      username: json["username"] as String? ?? '',
      email: json["email"] as String? ?? '',
      password: json["password"] as String? ?? '',
      role: json["role"] as String? ?? '',
      status: json["status"] as String? ?? '',
      createdAt: json["createdAt"] as String? ?? '',
      updatedAt: json["updatedAt"] as String? ?? '',
      v: json["__v"] as int? ?? 0,
    );
  }

  // Method to convert IdentityId object to JSON map
  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "email": email,
        "password": password,
        "role": role,
        "status": status,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}
