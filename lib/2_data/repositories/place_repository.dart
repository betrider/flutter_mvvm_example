import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/2_data/datasources/remote/rest_api.dart';
import 'package:flutter_mvvm_example/2_data/models/response/default_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 공간 - provider
final placeRepositoryProvider = ChangeNotifierProvider<PlaceRepository>((ref) {
  return PlaceRepository();
});

/// 공간 - 알림
class PlaceRepository extends ChangeNotifier {
  final restClient = RestClient(Dio());

  /// 공간 단건 검색
  Future<DefaultResponse> getPlace({required String placeId}) async {
    DefaultResponse result = await restClient.getPlace(placeId);
    return result;
  }

  /// 공간 목록검색
  Future<DefaultResponse> getPlaceList() async {
    DefaultResponse result = await restClient.getDeviceList();
    return result;
  }
}
