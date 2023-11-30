import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 사용 - provider
final riverpodNotifierProvider = AsyncNotifierProvider<RiverpodNotifier, RiverpodScreenModel>(() {
  return RiverpodNotifier();
});

/// 정의 - notifier(알림)
class RiverpodNotifier extends AsyncNotifier<RiverpodScreenModel> {
  @override
  FutureOr<RiverpodScreenModel> build() {
    return initData();
  }
}

FutureOr<RiverpodScreenModel> initData() async{
  var deviceId = await Future.delayed(const Duration(seconds: 3)).then((value) => 'deviceId11');
  throw 'deviceId 오류';

  var placeId = await Future.delayed(const Duration(seconds: 3)).then((value) => 'placeId11');
  throw 'placeId 오류';

  var userId = await Future.delayed(const Duration(seconds: 3)).then((value) => 'userId11');
  throw 'userId 오류';

  return RiverpodScreenModel(
    deviceId: deviceId,
    placeId: placeId,
    userId: userId,
    test: 'test',
  );
}

/// 정의 - state(상태)
class RiverpodScreenModel {
  String deviceId;
  String placeId;
  String userId;
  String test;
  RiverpodScreenModel({
    required this.deviceId,
    required this.placeId,
    required this.userId,
    required this.test,
  });
}
