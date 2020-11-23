# for_Tune
日頃のルーティンを投稿をするサイト。誰でも簡単に投稿ができコメントも投稿ができるページ。ルーティン投稿、コメント投稿、マイページ機能、カテゴリー検索、キーワード検索などの機能が実装されていますが、デプロイはしていません。

###### 利用方法
 ・メニューバーからログイン→トップページから投稿ボタン押下→ルーティン情報入力→ルーティン投稿
 ・メニューバーからログイン→トップページからルーティン写真押下→コメント登録→SENDボタン押下
 ・メニューバーからログイン→メニューバーからユーザーメニュー
 ・メニューバーからログイン→メニューバーからカテゴリー検索
 ・メニューバーからログイン→「routine名から検索する」からキーワードを入力→searchボタン押下

## 目指した課題解決
 このアプリケーションを通じて、環境の変化が多い30代前後の方が周囲の方との比較を投稿されたルーティンから感じてもらい、参考にしてもらい不安を解消してもらう。

### 要件定義
| 優先順位 | 機能       | 目的 | 詳細 | ストーリー（ユースケース） | 見積もり（所要時間） |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

#### 実装予定の機能
 ルーティン自動削除機能

#### データベース設計
 for_Tune.dioに記載

#### 動作方法・開発環境
 ・WebブラウザGoogle Chromeの最新版を利用してlocalhost:3000にてアクセスしてください。
 （現在はデプロイしておりません。）
 ・同時に複数の方がログインしている場合に、ログインできない可能性があります。

 ・Ruby/Ruby on Rails/Bootstrap/MySQL/Github/Visual Studio Code
