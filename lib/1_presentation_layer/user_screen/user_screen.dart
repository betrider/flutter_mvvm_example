import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/component/login_button.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/component/name_text_field.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/component/password_text_field.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/user_screen_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Screen'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const NameTextField(),
                const SizedBox(height: 16),
                const PasswordTextField(),
                const SizedBox(height: 16),
                const LoginButton(),
                const SizedBox(height: 100),
                Text('이름 데이터 : ${context.watch<UserScreenProvider>().name}'),
                const SizedBox(height: 16),
                Text('비밀번호 데이터 : ${context.watch<UserScreenProvider>().password}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
