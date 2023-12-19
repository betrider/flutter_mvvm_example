import 'package:dio/dio.dart';
import 'package:flutter_mvvm_example/2_data/model/request/user_request.dart';
import 'package:flutter_mvvm_example/2_data/model/response/default_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

/// 접두사 룰
/// GET -> get
/// POST -> post
/// PUT -> put
/// FETCH -> fetch
/// DELETE -> delete

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/login')
  Future<DefaultResponse> login(@Body() UserRequest userModel);

  @GET('/place/{placeId}')
  Future<DefaultResponse> getPlace(@Path("placeId") String placeId);

  @GET('/place/list')
  Future<DefaultResponse> getPlaceList();

  @GET('/device/{deviceId}')
  Future<DefaultResponse> getDevice(@Path("deviceId") String deviceId);

  @GET('/device/list')
  Future<DefaultResponse> getDeviceList();
}
