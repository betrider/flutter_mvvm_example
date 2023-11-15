import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/2_data_layer/model/user_model.dart';
import 'package:flutter_mvvm_example/2_data_layer/repo/auth_repository.dart';

class UserScreenProvider extends ChangeNotifier {

  // 상태관리 데이터 → ----------------------------------- ↓ ↓
  String _name = '';
  String _password = '';
  bool _isLoading = false;

  // UI에서 참조 할 데이터 → ----------------------------------- ↓ ↓
  //
  // example : context.watch<UserScreenProvider>().name
  String get name => _name;
  String get password => _password;
  bool get isLoading => _isLoading;

  // UI에서 호출 할 메서드 → ----------------------------------- ↓ ↓
  //
  // example : context.read<UserScreenProvider>().updateName()
  void updateName(String name) {
    _name = name;
    notifyListeners();
  }

  void updatePassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<bool> login() async{
    // loading으로 변경
    _isLoading = true;
    notifyListeners();

    // AuthRepository.login 호출
    var result = await AuthRepository().login(UserModel(name, password));

    // loading으로 변경
    _isLoading = false;
    notifyListeners();

    return result.success;
  }
}