import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 전역 토스트 알림 이벤트
class CustomToast {
  CustomToast._();
  static void success(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 5,
      textColor: Colors.black,
      fontSize: 16.0,
      webBgColor: "#4FF0B1",
      gravity: ToastGravity.TOP,
      webPosition: "right",
    );
  }

  static void error(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 5,
      textColor: Colors.white,
      fontSize: 16.0,
      webBgColor: "#EE0022",
      gravity: ToastGravity.TOP,
      webPosition: "right",
    );
  }
}
