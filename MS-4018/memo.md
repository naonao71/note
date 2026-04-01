**MS-4018 Microsoft 365 Copilotでドラフト、分析、プレゼンテーションを行う**
***

最終更新日 2025/09/24

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

MS-4018で Microsoft 365 Copilot 環境がなく自身で検証したい場合は以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境（[接続テスト](https://labondemand.com/Launch/949F2C16)）で提供されました。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

**リンク一覧およびメモ**
> [!NOTE]
> リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

[MS-4018 テキスト](https://learn.microsoft.com/ja-jp/training/paths/draft-analyze-present-microsoft-365-copilot/)

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

## Microsoft Copilot Chat

- 講義中に使用したプロンプトの一部です。以下の Prompt を自身の環境などで試してみてください。

**リアルタイムデータをインターネットから取得する**

```powershell
現在の沖縄の天気を教えてください
```

**AIによるブレスト＆Wordファイル作成**

```powershell
プロジェクト管理の専門家として、新しい太陽光発電式ベビーカーのプロジェクト計画を、最新のPMI（プロジェクトマネジメント協会）標準に基づいて作成してください。
Word.docxのドキュメントを作成してください
```

- **ファイルを添付して要約**

```powershell
ドキュメントの中から最も重要な5つのポイントに焦点を当てて、300語の要約を作成してください。
```

**練習問題生成**

```powershell
Microsoft 365 Copilot Chat の専門家として、Microsoft 365 Copilot Chat の主な機能、アクセス方法、さまざまな利用形態、起動方法に関する選択式の質問を2つ作成してください。1問ずつ提示し、私の回答を待ってください。私が答えたら、正解を簡単に説明してから次の質問に進んでください。
```

**最新情報の要約と取得**

```powershell
Microsoft のCEOが最近発表した声明を要約してください
```

**コンテンツのアイデア出しと下書き**

```powershell
"良いものは変わらない" というインスピレーションを例に、歯を白くし、息をスッキリさせる歯磨き粉の新しいブランドのキャッチーなスローガンを書いてください。
```

**ファイルから情報を抽出**

```powershell
このファイルの内容を教えてください。
```

**ファイルから情報を抽出：応用編**

```powershell
これらのファイルをベースに、読みやすさを高めるために明確な見出しと箇条書きを含む FAQ を作成してください。ドキュメントは、よくある質問に効果的に対応し、対象読者にとって包括的な回答を提供できるように構成してください。共有や配布を容易にするために、Markdown 形式のフォーマットを使用することを検討してください。
```

**データの視覚化**

```powershell
ホテルのプライベートプールでカクテルを飲みながらくつろいでいる猫を作成してください
```

**コードの生成と分析**

```powershell
文字と文字列を入力として受け取り、文字列内で文字が何回出現するかを返す関数を Python で記述します。
同じことをしますが、今回はC# で書きます。
関数を簡素化できますか?
関数にコメントを追加してください。
```

**AI によるディスカッション**

```powershell
#指示書 以下を一度深呼吸して、ステップバイステップで実行してください。 STEP1:${議論のテーマ}を設定 STEP2:${議論のテーマ}に関する議論に最適な人格を3人生成してください。 STEP3:${議論のテーマ}について5回会話してください。 STEP4:会話文の内容から論点を抽出し、結論を示してください。 STEP5:結論を元に実施すべき行動計画を立ててください。 #制約条件 STEP3の各人格の発言は全文記載すること 行動計画は箇条書きで示してください それでは、議論のテーマは{きのこの山とたけのこの里}でお願いします。はじめてください。
```

## Powerpoint






