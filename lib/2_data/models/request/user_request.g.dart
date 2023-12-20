// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) => UserRequest(
      json['name'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$UserRequestToJson(UserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
    };
