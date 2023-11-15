import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/user_screen_provider.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isLoading = context.watch<UserScreenProvider>().isLoading;
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        onPressed: () async {
          bool isSuccess = await context.read<UserScreenProvider>().login();

          if (context.mounted) {
            if (isSuccess) {
              context.showSnackBar('성공했습니다.');
            } else {
              context.showSnackBar('실패했습니다.');
            }
          }
        },
        child: isLoading
            ? const Center(
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              )
            : const Text('로그인'),
      ),
    );
  }
}

extension ContextExtension on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
