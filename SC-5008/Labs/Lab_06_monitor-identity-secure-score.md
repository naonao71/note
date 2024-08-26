---
lab:
    title: 'Lab 6: - Monitor and managed security posture with Identity Secure Score'
    module: 'Module : Deploying access using Microsoft Entra entitlement management'
---

# Lab 6 - Identity Secure Score を使用したセキュリティ体制の監視と管理

## ラボシナリオ

Microsoft Entra Identity Protection は、ID ベースのリスクに対する自動検出と修復を提供し、潜在的なリスクを調査するためのデータをポータルに提供します。Microsoft Entra Identity Protection には、ID セキュリティ体制を監視および改善するための ID セキュリティ スコアも用意されています。Microsoft Defender XDR や Microsoft Defender for Cloud と同様に、ID セキュリティ スコアは、Microsoft Entra ID の ID の全体的なセキュリティ体制を改善できる改善アクションと推奨事項を提供します。このラボでは、この機能について説明します。

#### **所要時間**: 15 分

### 演習 1 - Identity Secure Scoreを使用したIDセキュリティ態勢の監視と管理

#### Task 1 - ID セキュリティ スコアと改善アクションを確認する

1. グローバル管理者アカウントを使用して https://entra.microsoft.com にサインインします。

2. **保護** メニューを開き、**ID セキュア スコア** を選択します

3. **概要** タイルには、**ID セキュリティ スコア** が表示されます。

4. 下にスクロールして、**改善アクション** を表示します。

5. Microsoft Defender for Cloud と Microsoft Defender XDR の改善アクションとは対照的に、これらの改善アクションは ID に固有です。これにより、セキュリティ体制管理に対する潜在的なアクションのより焦点を絞ったリストが提供されます。この一覧から開始された改善アクションは、テナント全体のセキュリティ体制にも影響を与えます。

#### Task 2 - 改善アクションの実行

1. ID セキュリティ体制の 1 つの領域を改善するには、 **Microsoft Entra ID Identity Protection のサインイン リスク ポリシーを有効にする** を選択します。

2. 開いたタイルで、下にスクロールして **はじめに** のリンクを選択します。

3. Identity Protection | サインイン リスク ポリシー の新しいタブが開きます 。

4. **割り当て** で **すべてのユーザー** を選択します。

5. **サインイン リスク** で **中以上** を選択します。

6. **制御** で **アクセスを許可 - 多要素認証を要求する** を選択します。

7. **ポリシーの適用** を **有効** にし (まだ行っていない場合)、**保存** を選択します。

8. サインイン リスク ポリシーが作成され、ID セキュリティ スコアが増加するはずです。これが ID セキュア スコアに反映されるまでには、最大 24 時間かかります。

9. その他の改善アクションと、それらを作成して有効にする手順を確認します。
