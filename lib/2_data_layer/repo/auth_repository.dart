import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/2_data_layer/data/local/shared_preference.dart';
import 'package:flutter_mvvm_example/2_data_layer/data/remote/rest_api.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/request/user_request.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/response/default_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = ChangeNotifierProvider<AuthRepository>((ref) {
  return AuthRepository(ref);
});

class AuthRepository extends ChangeNotifier {

  final Ref ref;
  final restClient = RestClient(Dio());

  AuthRepository(this.ref);

  /// 토큰 가져오기
  String? getToken(){
    var token = ref.read(sharedPreferencesProvider).getString('token');
    return token;
  }

  /// 토큰 가져오기
  void setToken(String token){
    ref.read(sharedPreferencesProvider).setString('token', token);
  }

  /// 사용자 로그인
  Future<DefaultResponse> login(UserRequest userRequest) async {
    DefaultResponse result = await restClient.login(userRequest);
    return result;
  }
}