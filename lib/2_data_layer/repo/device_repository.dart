import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/2_data_layer/data/remote/rest_api.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/response/default_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceRepositoryProvider = ChangeNotifierProvider<DeviceRepository>((ref) {
  return DeviceRepository();
});

class DeviceRepository extends ChangeNotifier {

  final restClient = RestClient(Dio());

  /// 장치 단건 검색
  Future<DefaultResponse> getDevice({required String deviceId}) async {
    DefaultResponse result = await restClient.getDevice(deviceId);
    return result;
  }

  /// 장치 목록 검색
  Future<DefaultResponse> getDeviceList() async {
    DefaultResponse result = await restClient.getDeviceList();
    return result;
  }
}