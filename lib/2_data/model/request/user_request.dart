import 'package:json_annotation/json_annotation.dart';

part 'user_request.g.dart';

@JsonSerializable()
class UserRequest {
  String name;
  String password;

  UserRequest(this.name, this.password);

  factory UserRequest.fromJson(Map<String, dynamic> json) => _$UserRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserRequestToJson(this);
}