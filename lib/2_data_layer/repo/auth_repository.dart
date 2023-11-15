import 'package:dio/dio.dart';
import 'package:flutter_mvvm_example/2_data_layer/data/remote/rest_api.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/default_response.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/user_model.dart';

class AuthRepository {
  Future<DefaultResponse> login(UserModel userModel) async {
    final restClient = RestClient(Dio());

    DefaultResponse result = await restClient.login(userModel);

    return result;
  }
}
