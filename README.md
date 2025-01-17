# README

## 環境構築
```
$ bundle install --without=production
$ bin/rails db:setup
$ yarn install
$ bin/webpack
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください
### ◯選択した事業側の課題
直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？

### ◯提案内容
**もくもく会に参加する人のプロフィールを見られるようにする**

→現状、参加者は互いにどのような属性の人が参加するか確認することが出来ない。分かるのは互いの名前だけとなっている。事前に参加者が互いのプロフィールを確認できたら、「もくもく会当日にあの人に話しかけてみよう！」等、交流するきっかけが生まれると考えられる。

### ◯実装方法
- 【新設】閲覧用プロフィールページ(/users/:uuid)
  - 参加者個々人の「名前・主な使用言語・自己紹介・Twitterアカウントのリンク」を確認することができる。
  - 自分の閲覧用プロフィールページには、「編集する」ボタンを設置し、プロフィール編集ページに遷移できるようにする。

- もくもく会詳細ページ(/events/:id)
  - 「主催者情報」欄にある、主催者のアイコンをクリックすると、閲覧用プロフィールページに遷移できるようにする。
  - 「参加者」欄にある、参加者のアイコンをクリックすると、閲覧用プロフィールページに遷移できるようにする。

- プロフィール編集ページ(/mypage/profile)
  - 「主な使用言語」を登録できるようにする(チェックボックス)。
  - 「自己紹介」を登録できるようにする。
  - 「Twitterのアカウント」を登録できるようにする。
