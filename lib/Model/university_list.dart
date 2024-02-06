import 'dart:convert';

List<University> universityFromJson(String str) =>
    List<University>.from(json.decode(str).map((x) => University.fromJson(x)));

String universityToJson(List<University> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class University {
  final String id;
  final String universityName;
  final String address;
  final String phoneNumber;
  final String email;
  final String websiteUrl;
  final String establishmentYear;
  final String type;
  final String? logoPath;
  final String? password;
  final String? status;
  final String createdAt;
  final String updatedAt;
  final int v;

  University({
    required this.id,
    required this.universityName,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.websiteUrl,
    required this.establishmentYear,
    required this.type,
    required this.logoPath,
    required this.password,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory University.fromJson(Map<String, dynamic> json) => University(
        id: json["_id"],
        universityName: json["universityName"],
        address: json["address"],
        phoneNumber: json["phoneNumber"],
        email: json["email"],
        websiteUrl: json["websiteUrl"],
        establishmentYear: json["establishmentYear"],
        type: json["type"],
        logoPath: json["logoPath"],
        password: json["password"],
        status: json["status"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "universityName": universityName,
        "address": address,
        "phoneNumber": phoneNumber,
        "email": email,
        "websiteUrl": websiteUrl,
        "establishmentYear": establishmentYear,
        "type": type,
        "logoPath": logoPath,
        "password": password,
        "status": status,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}
