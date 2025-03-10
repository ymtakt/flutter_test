import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_normal_object/freezed_normal_object.dart';

class TestWidget extends ConsumerWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(intArgProvider(1));
    ref.watch(intArgProvider(2));
    return const Placeholder();
  }
}
