import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_normal_object/freezed_normal_object.dart';

void main() {
  test('Each provider retains value for each argument', () {
    final container = createContainer();

    final value1 = container.read(intArgProvider(1));
    final value2 = container.read(intArgProvider(2));

    expect(value1, 1);
    expect(value2, 2);
  });

  testWidgets('testing invalidate part', (widgetTester) async {
    await widgetTester.pumpWidget(ProviderScope(child: const TestWidget()));

    print('setting up container');
    final element = widgetTester.element(find.byType(TestWidget));
    final container = ProviderScope.containerOf(element);

    container.read(intArgProvider(1).notifier).updateValue(10);
    container.read(intArgProvider(2).notifier).updateValue(20);
    expect(container.read(intArgProvider(1)), 10);
    expect(container.read(intArgProvider(2)), 20);
    print('invalidate');
    container.invalidate(intArgProvider(1));
    expect(container.read(intArgProvider(1)), 1);
    expect(container.read(intArgProvider(2)), 20);
  });

  testWidgets('testing invalidate all', (widgetTester) async {
    await widgetTester.pumpWidget(ProviderScope(child: const TestWidget()));

    print('setting up container');
    final element = widgetTester.element(find.byType(TestWidget));
    final container = ProviderScope.containerOf(element);

    container.read(intArgProvider(1).notifier).updateValue(10);
    container.read(intArgProvider(2).notifier).updateValue(20);
    expect(container.read(intArgProvider(1)), 10);
    expect(container.read(intArgProvider(2)), 20);
    print('invalidate all');
    container.invalidate(intArgProvider);
    expect(container.read(intArgProvider(1)), 1);
    expect(container.read(intArgProvider(2)), 2);
  });
}

/// ProviderContainerを作成するユーティリティ（ボイラープレート）
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  // テスト終了時にProviderContainerを破棄
  addTearDown(container.dispose);

  return container;
}
