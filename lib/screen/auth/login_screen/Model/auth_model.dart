import 'dart:convert';

List<AuthResult> authResultFromJson(String str) =>
    List<AuthResult>.from(json.decode(str).map((x) => AuthResult.fromJson(x)));

String authResultToJson(List<AuthResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AuthResult {
  final String token;
  final String email;
  final String identity;
  final String role;

  AuthResult({
    required this.token,
    required this.email,
    required this.identity,
    required this.role,
  });

  factory AuthResult.fromJson(Map<String, dynamic> json) => AuthResult(
        token: json["token"],
        email: json["email"],
        identity: json["identity"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "email": email,
        "identity": identity,
        "role": role,
      };
}
