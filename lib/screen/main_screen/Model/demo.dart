import 'dart:convert';

class UserCredentials {
  final String id;
  final String username;
  final String email;
  final String password;
  final String role;
  final String status;
  final String createdAt;
  final String updatedAt;
  final int v;

  UserCredentials({
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

  factory UserCredentials.fromJson(Map<String, dynamic> json) {
    return UserCredentials(
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
