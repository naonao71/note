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

MS-4019トレーニングコースでは Microsoft 365 Copilot が利用可能なラボ環境が提供されます。自身の環境に Microsoft 365 Copilot が導入されている場合は、自分の環境でプロンプトを実施することができます。（ラボで使用するファイルは別途取得できます。）

> [!IMPORTANT]
> ラボ環境は英語版が提供されています。日本語での解答をしたい場合は、ブラウザーの言語を日本語にしてください。

# Lab日本語版
## [03-exercise-analyst-agent](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/blob/main/Instructions/Labs/M02-explore-prebuilt-microsoft-365-copilot-agents/03-exercise-analyst-agent.md)

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

## [05-exercise-researcher-agent](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/blob/main/Instructions/Labs/M02-explore-prebuilt-microsoft-365-copilot-agents/05-exercise-researcher-agent.md)

- リサーチ エージェントを使用して、プロンプトを試す
- 自身の環境で行ってください。

このトレーニングの演習では、リサーチ ツール エージェントを使って、Outlook、OneDrive、Teams にまたがる情報を統合し、ご自身のデータからトピックに関する分析情報を作成します。

```powershell
過去 90 日間の [トピック X] に関連するすべての最近のディスカッション、ドキュメント、メールを収集して要約します。
```

フォローアップの質問がある場合は、必要に応じて返信してください。 たとえば、リサーチ ツールが次のような質問をする場合があります。

```powershell
パフォーマンス、更新、問題など、特に関心のある [トピック X] の特定の側面はありますか?
詳細なレポートまたは大まかな要約が必要ですか?
レポートやプレゼンテーションなど、要約に適した特定の形式はありますか?
```

リサーチツールの結果を確認した後、スコープを絞り込むかどうかを判断します。 たとえば、次のように求めることができます。

```powershell
自分に対する実施項目の一覧を表示してください。
[person name] との会議についてさらに詳細を提供してください。
これらのやり取りの主要な決定事項を要約してください。
プロジェクトの参加に関するチームへのメールを下書きしてください。
```

その他の要求を自由に、リサーチ ツール エージェントに送信してください。 この機会を活用して、応答が得られる要求の種類について学習しましょう。 次のプロンプトから、関心があるものをいくつか送信するか、独自のプロンプトを入力します。

```powershell
一般的な調査と情報収集:
[トピック X] に関連するすべての最近のドキュメント、チャット、メールを要約してください。
過去 1 か月間に [トピック X] についてどのような決定が行われました?
更新されたリモート ワーク ポリシーに関するフィードバックを見つけて要約してください。
[トピック X] に関する最近の会議で説明された主要な成果物と期限を一覧表示してください。
[トピック X] の主な共同作成者は誰ですか?

会議の準備:
[トピック X] に関する最近のコミュニケーションと共有ファイルを要約して、今後の会議の準備を手伝ってください。
過去の週次チーム同期で、どのようなトピックが話し合われましたか?
先週の木曜日のリーダーシップ会議で私が見逃したフォローアップ アクションは何ですか?

進行状況と状態の更新:
[トピック X] の現在の状態と阻害要因を要約してください。
メールと Teams の更新に基づくと、[トピック X] の進行状況はどの程度ですか?
来週のチェックインに向けて [トピック X] の更新情報を 1 ページで作成してください。

未回答の質問とギャップ:
[トピック X] に関する未解決のままの質問は何ですか?
前回のレビュー会議以降、まだ不完全な実施項目はどれですか?

ドキュメントの検出と分析情報:
[トピック X] の最新バージョンを見つけて、主要な更新プログラムを要約してください。
[トピック X] について、過去 60 日間に作成されたすべての予算ファイルを一覧表示してリンクしてください。
[トピック X] に関連する共有ドキュメントの内容を要約してください。
```

## [10-exercise-agent-choice](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/blob/main/Instructions/Labs/M02-explore-prebuilt-microsoft-365-copilot-agents/10-exercise-agent-choice.md)

- 適当なエージェントを使用して、プロンプトを試す
- 自身の環境で行ってください。

このモジュールのこれまでの演習では、アナリストとリサーチ ツールのエージェントを使用しました。 この演習では、これらのエージェントを再利用しないでください。 代わりに、他の事前構築済みエージェントのどれかを使用して、選択したプロジェクトを支援します。 そうすることで、Copilot のさまざまな機能について経験を得ることができ、さまざまな種類のタスクに対してどのエージェントが最適なのかを理解できます。


## [6-exercise-create-copilot-chat-agent](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/blob/main/Instructions/Labs/M03-build-manage-no-code-agent-sharepoint/6-exercise-create-copilot-chat-agent.md)

- Microsoft 365 Copilot Chat 用の独自のカスタム エージェントを作成します。


## [8-exercise-create-sharepoint-agent](https://github.com/MicrosoftLearning/MS-4019-Transform-your-everyday-business-processes-with-agents.ja-jp/blob/main/Instructions/Labs/M03-build-manage-no-code-agent-sharepoint/8-exercise-create-sharepoint-agent.md)

- SharePoint エージェントを作成して、すばやく答えを得たり、既に使用している特定の SharePoint サイトに関連する有用なアクションを実行します。