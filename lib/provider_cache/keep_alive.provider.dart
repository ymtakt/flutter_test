// コード生成のためのパート指定
import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'keep_alive.provider.g.dart';

// 値をカウントして確認しやすくする変数
int _keepAliveCounter = 0;
int _autoDisposeCounter = 0;

// keepAliveを使用するプロバイダー
@riverpod
Future<String> fetchData(Ref ref) async {
  // カウンターをインクリメント
  _keepAliveCounter++;
  
  print('keepAliveプロバイダーが実行されました (カウント: $_keepAliveCounter)');
  
  // データフェッチを模倣
  await Future.delayed(Duration(seconds: 2));
  
  // 生成時刻とカウンターを含む結果
  final data = '生成ID: $_keepAliveCounter (${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second})';
  
  // キャッシュを保持
  print('keepAliveを呼び出します');
  ref.keepAlive(); //これにより、画面破棄してすぐ戻っても際フェッチじゃなくこの時の値のまま
  
  // 一定時間後にキャッシュを無効化する場合
  Timer(Duration(seconds: 15), () {
    print('15秒経過: キャッシュを解放します');
    ref.invalidateSelf();
  });
  
  return data;
}

// 自動破棄されるプロバイダー
@riverpod
Future<String> fetchDataAutoDispose(Ref ref) async {
  // カウンターをインクリメント
  _autoDisposeCounter++;
  
  print('autoDisposeプロバイダーが実行されました (カウント: $_autoDisposeCounter)');
  
  // データフェッチを模倣
  await Future.delayed(Duration(seconds: 2));
  
  // 生成時刻とカウンターを含む結果
  final data = '生成ID: $_autoDisposeCounter (${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second})';
  
  print('これは自動破棄されるプロバイダーです');
  
  return data;
}