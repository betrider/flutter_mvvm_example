import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/user_screen_provider.dart';
import 'package:provider/provider.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: '비밀번호'),
      onChanged: (value) {
        context.read<UserScreenProvider>().updatePassword(value);
      },
    );
  }
}
