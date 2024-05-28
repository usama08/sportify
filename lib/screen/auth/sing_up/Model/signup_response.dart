import 'dart:convert';

List<SignupResult> signupResultFromJson(String str) => List<SignupResult>.from(
    json.decode(str).map((x) => SignupResult.fromJson(x)));

String signupResultToJson(List<SignupResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SignupResult {
  final String phonenumber;
  final String status;
  final String gender;
  final Location location;
  final String skillLevel;
  final String universityId;
  final String identityId;
  final String preferenceId;
  final String studentId;
  final String id;
  final String createdAt;
  final String updatedAt;
  final int v;

  SignupResult({
    required this.phonenumber,
    required this.status,
    required this.gender,
    required this.location,
    required this.skillLevel,
    required this.universityId,
    required this.identityId,
    required this.preferenceId,
    required this.studentId,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory SignupResult.fromJson(Map<String, dynamic> json) => SignupResult(
        phonenumber: json["phonenumber"],
        status: json["status"],
        gender: json["gender"],
        location: Location.fromJson(json["location"]),
        skillLevel: json["skillLevel"],
        universityId: json["universityId"],
        identityId: json["identityId"],
        preferenceId: json["preferenceId"],
        studentId: json["studentId"],
        id: json["_id"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "phonenumber": phonenumber,
        "status": status,
        "gender": gender,
        "location": location.toJson(),
        "skillLevel": skillLevel,
        "universityId": universityId,
        "identityId": identityId,
        "preferenceId": preferenceId,
        "studentId": studentId,
        "_id": id,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}

class Location {
  final String type;
  final List<double> coordinates;

  Location({
    required this.type,
    required this.coordinates,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        type: json["type"],
        coordinates:
            List<double>.from(json["coordinates"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}
