import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/1_presentation_layer/riverpod_screen/riverpod_screen_provider.dart';
import 'package:flutter_mvvm_example/component/custom_error_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodScreen extends ConsumerWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var todos = ref.watch(riverpodNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('리버팟 페이지'),
      ),
      body: todos.when(
        skipLoadingOnRefresh: false,
        data: (data) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('deviceId:${data.deviceId}'),
                Text('placeId:${data.placeId}'),
                Text('userId:${data.userId}'),
                Text('test:${data.test}'),
              ],
            )
          );
        },
        error: (error, stackTrace) => CustomErrorWidget(
          errorText: error.toString(),
          onPressed: () {
            ref.invalidate(riverpodNotifierProvider);
          },
        ),
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
