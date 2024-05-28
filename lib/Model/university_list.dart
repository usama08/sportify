import 'dart:convert';

List<University> universityFromJson(String str) => List<University>.from(
    json.decode(str)["result"].map((x) => University.fromJson(x)));

String universityToJson(List<University> data) =>
    json.encode({"result": List<dynamic>.from(data.map((x) => x.toJson()))});

class University {
  final String id;
  final String universityName;
  final String address;
  final String phoneNumber;
  final String websiteUrl;
  final String establishmentYear;
  final String type;
  final IdentityId identityId;
  final String createdAt;
  final String updatedAt;
  final int v;

  University({
    required this.id,
    required this.universityName,
    required this.address,
    required this.phoneNumber,
    required this.websiteUrl,
    required this.establishmentYear,
    required this.type,
    required this.identityId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory University.fromJson(Map<String, dynamic> json) => University(
        id: json["_id"],
        universityName: json["universityName"],
        address: json["address"],
        phoneNumber: json["phoneNumber"],
        websiteUrl: json["websiteUrl"],
        establishmentYear: json["establishmentYear"],
        type: json["type"],
        identityId: IdentityId.fromJson(json["identityId"]),
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "universityName": universityName,
        "address": address,
        "phoneNumber": phoneNumber,
        "websiteUrl": websiteUrl,
        "establishmentYear": establishmentYear,
        "type": type,
        "identityId": identityId.toJson(),
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}

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

  factory IdentityId.fromJson(Map<String, dynamic> json) => IdentityId(
        id: json["_id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
        status: json["status"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        v: json["__v"],
      );

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
