import 'package:json_annotation/json_annotation.dart';

part 'default_response.g.dart';

@JsonSerializable()
class DefaultResponse {
  final int code;
  final bool success;
  final String message;

  DefaultResponse({
    required this.code,
    required this.success,
    required this.message,
  });

  factory DefaultResponse.fromJson(Map<String, dynamic> json) => _$DefaultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultResponseToJson(this);
}
