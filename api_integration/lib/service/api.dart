import 'dart:convert';

ApiService apiServiceFromJson(String str) => ApiService.fromJson(json.decode(str));

String apiServiceToJson(ApiService data) => json.encode(data.toJson());

class ApiService {
    ApiService({
        required this.message,
        required this.status,
    });

    String message;
    String status;

    factory ApiService.fromJson(Map<String, dynamic> json) => ApiService(
        message: json["message"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
    };
}
