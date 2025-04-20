# AsyncValueの状態管理について
https://zenn.dev/tsuruo/articles/52f62fc78df6d5

## AsyncValueとは
非同期処理に関連する全ての状態（データ、エラー、ローディング、リフレッシュ、再ロード）を一つの型で統一的に管理できる

## 状態の種類
- hasValue・・・非同期処理が正常に完了し、データ（value）が存在する状態
- hasError・・・非同期処理中にエラーが発生し、エラー情報が存在する状態
- isLoading・・・すべてのローディングの状態
- isRefreshing・・・プロバイダーのリフレッシュ（isLoadingもtrueになる、hasValue,hasErrorはそのまま保持してる）
- isReloading・・・依存関係のあるものの影響で再ビルドになるとtrueになる（isLoadingもtrueになる、hasValue,hasErrorはそのまま保持してる）




hasValue、hasErrorはなんでisLoading以外のローディング状態で値を保持したままなんだろう？
1.UXの観点
- リフレッシュや再ロード中に画面が真っ白になったり、データが一時的に消えるとユーザー体験が悪化します
- 既存のデータを表示したまま、新しいデータを取得する方が自然な動作です

2.状態管理の観点
- isRefreshing: ユーザーが明示的にリフレッシュを要求した場合
既存のデータは有効な状態なので、新しいデータが取得できるまで表示し続ける
例：プルダウンリフレッシュで新しいデータを取得する場合
- isReloading: 依存関係の変更による自動的な再取得の場合
既存のデータは有効な状態なので、新しいデータが取得できるまで表示し続ける
例：フィルター条件が変わった場合など

3.エラー状態の観点
- エラーが発生した場合でも、前回のエラー情報は重要なコンテキストとなります
- 新しいデータ取得中に前回のエラー情報を保持することで、エラーの履歴を追跡できます




## 1. 通常のプロバイダー (fetchArticlesProvider)

### 想定される動作
- 初期状態: isLoading = true, hasValue = false, hasError = false
- データ取得後: isLoading = false, hasValue = true, hasError = false
- リフレッシュ時: isRefreshing = true (データは保持)

### 実際の結果
- 初期ロード時は想定通り
- リフレッシュボタン押下時、isRefreshingがtrueになり、データは保持される
- エラー発生時は想定通りに動作

## 2. エラーを発生させるプロバイダー (fetchArticlesWithErrorProvider)

### 想定される動作
- 初期状態: isLoading = true, hasValue = false, hasError = false
- エラー発生後: isLoading = false, hasValue = false, hasError = true
- リフレッシュ時: isRefreshing = true (エラー状態は保持)

### 実際の結果
- エラー発生時は想定通りに動作
- リフレッシュボタン押下時、isRefreshingがtrueになり、エラー状態は保持される
- エラーメッセージが正しく表示される

## 3. 依存関係のあるプロバイダー (fetchArticlesWithDependencyProvider)

### 想定される動作
- 初期状態: isLoading = true, hasValue = false, hasError = false
- データ取得後: isLoading = false, hasValue = true, hasError = false
- カウンター変更時: isReloading = true (データは保持)
- リフレッシュ時: isRefreshing = true (データは保持)

### 実際の結果
- 初期ロード時は想定通り
- カウンター増加ボタン押下時、isReloadingがtrueになり、データは保持される
- リフレッシュボタン押下時、isRefreshingがtrueになり、データは保持される
- 依存関係の変更に応じてデータが更新される

## 全体的な特徴
- AsyncValueは非同期処理の状態を適切に管理
- isLoading, hasValue, hasErrorの状態が明確に区別される
- isRefreshingとisReloadingの違いが明確
- エラー状態の管理が適切
- データの保持と更新のバランスが取れている
