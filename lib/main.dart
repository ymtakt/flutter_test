import 'package:dart_flutter_practice/async_value/list_widget.dart';
import 'package:dart_flutter_practice/provider_cache/cache_page.dart';
import 'package:dart_flutter_practice/provider_cache/stream_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // body: ListWidget(),
        // AsyncValueStateを確認するための画面
        // body: AsyncValueStateChecker(),

        // StreamWidgetを確認するための画面
        // body: StreamWidgetPage(),

        // CacheExamplePageを確認するための画面
        body: CacheExamplePage(),
      ),
    );
  }
}
