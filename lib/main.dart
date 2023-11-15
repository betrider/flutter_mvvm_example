import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/user_screen.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/user_screen/user_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// 사용할 Provider를 모두 선언
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserScreenProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserScreen()
    );
  }
}