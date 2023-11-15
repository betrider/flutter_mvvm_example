import 'package:dio/dio.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/default_response.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/login')
  Future<DefaultResponse> login(@Body() UserModel userModel);

}