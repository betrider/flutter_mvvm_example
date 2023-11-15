// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) =>
    DefaultResponse(
      code: json['code'] as int,
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$DefaultResponseToJson(DefaultResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'success': instance.success,
      'message': instance.message,
    };
