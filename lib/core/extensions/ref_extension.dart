import 'package:flutter_riverpod/flutter_riverpod.dart';

///
///
/// ```dart
/// - 전
/// state = ref.watch(SampleProvider);
///
/// - 후
/// state = ref.watch(SampleProvider.state);
/// ```
extension NotifierProviderExtension on NotifierProvider {
  NotifierProvider get state => this;
}

extension AutoDisposeNotifierProviderExtension on AutoDisposeNotifierProvider {
  AutoDisposeNotifierProvider get state => this;
}
