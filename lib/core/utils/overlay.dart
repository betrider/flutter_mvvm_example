import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

/// 전역 로딩 이벤트
class CustomOverlay {
  CustomOverlay._();
  static void show(BuildContext context) {
    context.loaderOverlay.show();
  }

  static void hide(BuildContext context) {
    context.loaderOverlay.hide();
  }
}
