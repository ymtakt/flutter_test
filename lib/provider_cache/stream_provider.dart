// コード生成のためのパート指定
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stream_provider.g.dart';

// Riverpod Generatorでストリームプロバイダーを定義
@riverpod
Stream<int> counterStream(Ref ref) {
  // StreamControllerを作成
  final controller = StreamController<int>();
  
  // カウント変数
  int count = 0;
  
  // 1秒ごとにカウントを増やしてStreamに流す
  final timer = Timer.periodic(Duration(seconds: 1), (_) {
    count++;
    controller.add(count); // Streamにデータを追加
    print('カウント: $count');
  });
  
  // プロバイダーが破棄されるときの処理
  ref.onDispose(() {
    // タイマーをキャンセル
    timer.cancel();
    
    // StreamControllerを閉じる（これが重要）
    controller.close();
    
    print('counterStreamProviderが破棄されました');
  });
  
  // StreamControllerのstreamを返す
  return controller.stream;
}



@riverpod
TextEditingController textController(Ref ref) {
  final controller = TextEditingController();
  
  ref.onDispose(() {
    controller.dispose(); // プロバイダーが破棄されるときにクリーンアップ
  });
  
  return controller;
}

