# **MS-4019 エージェントを使用して日常のビジネス プロセスを変革する**
***

最終更新日 2025/11/04

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

MS-4019で Microsoft 365 Copilot 環境がなく自身で検証したい場合は以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境（[接続テスト](https://labondemand.com/Launch/949F2C16)）で提供されました。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

**リンク一覧およびメモ**
> [!NOTE]
> リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

[MS-4019 テキスト](https://learn.microsoft.com/ja-jp/training/paths/implement-no-code-copilot-agents-microsoft-365-sharepoint/)

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

> [!NOTE]
> - トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
> - メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するラボ環境

 > LODS環境は英語キーボードに設定されています。日本語キーボード設定に変更するにはLODS環境で下記コマンドを実行します。

```powershell
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "LayerDriver JPN" -Value "kbd106.dll"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardType" -Value 7
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardSubtype" -Value 2
Restart-Computer -Force
```

**Lab 概要**

MS-4019 ラボトップ [日本語](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/tree/main/Instructions/Labs)

一般的なMS-4019トレーニングコースでは Microsoft 365 Copilot が利用可能なラボ環境が提供されます。自身の環境に Microsoft 365 Copilot が導入されている場合は、自分の環境でプロンプトを実施することができます。（ラボで使用するファイルは別途取得できます。）

> [!IMPORTANT]
> ラボ環境は英語版が提供されています。日本語での解答をしたい場合は、ブラウザーの言語を日本語にしてください。

# Lab日本語版
- [03-exercise-analyst-agent](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/blob/main/Instructions/Labs/M02-explore-prebuilt-microsoft-365-copilot-agents/03-exercise-analyst-agent.md)

- 概要：アナリスト エージェント使用して、プロンプトを試す
- 使用ファイル：[Project_Nexus_survey_results.xlsx](https://github.com/MicrosoftLearning/MS-4004-Empower-workforce-copilot-use-cases/raw/refs/heads/master/ResourceFiles/Project_Nexus_survey_results.xlsx)

```powershell
このスプレッドシートを分析し、上位 3 つの傾向を示してください。
各アンケート カテゴリの平均評価はいくつですか?

定量分析プロンプト:
平均評価が最も高かったカテゴリと低かったカテゴリはどれですか?
プロジェクトの満足度を 4 以上と評価した参加者は何人ですか?
タイムラインの準拠率が 3 を下回った参加者は何パーセントですか?
コミュニケーションの有効性と全体的なエクスペリエンスの間の相関関係を特定できますか?

定性分析のプロンプト:
コメント セクションで最も一般的なテーマを要約してください。
コメントで繰り返し言及されている懸念や提案はありますか?
コミュニケーションやタイムラインの問題に言及しているコメントを特定してください。

分析情報と推奨事項のプロンプト:
アンケート データを基にすると、Project Nexus の上位 3 つの長所は何ですか?
参加者が提案した主要な改善の領域はどこですか?
実践的な推奨事項を含むアンケート結果の要約レポートを提供してください。

定量視覚化プロンプト:
全体的な評価分布の円グラフを生成してください。
プロジェクトの満足度、コミュニケーションの有効性、タイムラインへの準拠、全体的なエクスペリエンスの平均評価を比較する横棒グラフを作成してください。
評価の分布を確認する、満足度評価のヒストグラムをプロットしてください。
コミュニケーションの有効性と全体的なエクスペリエンスの関係を分析する散布図を生成してください。
すべての数値評価カテゴリの相関関係ヒートマップを作成してください。
各評価カテゴリのボックス プロットを作成して、範囲と四分位数を表示してください。
参加者 ID 順で、参加者のタイムライン準拠評価を示す折線グラフをプロットしてください。
```
