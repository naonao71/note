**MS-4005 Microsoft Copilot for Microsoft 365 に対して効果的なプロンプトを作成する**
***

最終更新日 2025/03/18

**リンク一覧およびメモ**

 > リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

MS-4005 ラボトップ [英語](https://github.com/MicrosoftLearning/MS-4005-Craft-effective-prompts-for-Microsoft-Copilot-for-Microsoft-365/tree/master/Instructions/Labs)/[日本語](https://github.com/MicrosoftLearning/MS-4005-Craft-effective-prompts-for-Microsoft-Copilot-for-Microsoft-365.ja-jp/tree/main/Instructions/Labs)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://learn.microsoft.com/ja-jp/training/courses/ms-4005)

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

- トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
- メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

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

一般的なMS-4005トレーニングコースでは Microsoft 365 Copilot が利用可能なラボ環境が提供されます。自身の環境に Microsoft 365 Copilot が導入されている場合は、ラボ環境を使用しないでラボを実施することができます。（ラボで使用するファイルは別途取得できます。）

- ラボで用意されているプロンプトは英語を直訳したものなので、日本語環境では動作しないことがあります。その場合は微調整が必要です。

[Sampleファイル](https://github.com/naonao71/note/tree/main/MS-4005/SampleFile)のすべてのデータを自分のOneDriveにコピーする

***

**Module1**

****

*Word*

**Market Analysis Report for Mystic Spice Premium Chai Tea.docx** 

```prompt
このWord文書の競合分析のセクションを要約し、明日の営業会議でチームと話し合う主なポイントの概要を簡潔に説明します。要約は5つの重要なポイントにとどめ、簡単な言葉を使用してください。
```

**PowerPoint**

**Mystic Spice Premium Chai Market Analysis Presentation.pptx**

```prompt
上司向けのこのPowerPointプレゼンテーションのスライド5〜10を要約し、クライアントと会う前の要点の概要を含めます。要点を箇条書きにし、プロフェッショナルな口調で表現してください。
```

*Excel*

**Contoso Chai Tea market trends 2023.xlsx**

```prompt
5月から8月までのアーティザナル チャイ販売数 (個)と既製チャイ販売数 (個)それぞれの最も高い数をそれぞれハイライトしてください
```

*Copilot for Microsoft 365*

**Market Analysis Report for Mystic Spice Premium Chai Tea.docx**</BR>
**Contoso Chai Tea market trends 2023.xlsx**</BR>
**Market Trend Report - Protein shake.docx**</BR>

```prompt
今後の四半期ごとのビジネス レビューのために、Contoso の新しい Protein Plus シェイクに関する情報をまとめます。エグゼクティブサマリーと、ソーシャルメディアキャンペーンと競合製品の詳細が必要です。エグゼクティブ サマリーを書くには、/Market Analysis Report for Mystic Spice Premium Chai Tea.docx、 /Contoso Chai Tea market trends 2023.xlsx および /**Market Trend Report - Protein shake.docx
で情報を探してください。要約はプロフェッショナルに聞こえ、リリースブロッカーについて希望に満ちたトーンで書かれているはずです。競合分析には、表内の関連製品へのリンクも含める必要があります。
```

****

**Module2**

*Word*

**Contoso CipherGuard Product Specification.docx**

```prompt
Contoso の最新製品である CipherGuard のマーケティング提案を作成します。製品の仕様と要件を使用して、マーケティング キャンペーンの 3 つのアイデアを生成する必要があります。製品の概要、各アイデアの長所と短所、およびROIの予測を含めてください。文書は2ページに収め、楽観的で説得力のある言葉を使用してください。
```

 >NOTE: Wordを開いてソースとして参照ファイルを指定する（参照文章を開いて、Copilotでプロンプトを入力した場合と比較すると違いがあることがわかります）

 他のプロンプト例：

 ```prompt
ワークライフバランスの重要性について記事を書く。
```

 ```prompt
プロジェクト管理に関するホワイトペーパーを書く。
```

 ```prompt
Contoso の営業職の求人レターを作成します。開始日は8月1日で、給与は年間60,000ドルとボーナスです。
```

*PowerPoint*

Market Trend Report- Protein shake.docx

 ```prompt
/Market Trend Report- Protein shake.docx の最新情報を使用して、新しいPowerPointプレゼンテーションを作成します。製品の機能と利点を潜在的なクライアントに提示する必要があります。製品の概要、主な機能と利点、および市場に出回っている同様の製品との比較を含めてください。プレゼンテーションは10枚のスライドに収め、簡単な言葉を使用してください。
```

 >TIPS: Word文章はスタイルを使用して作成することでPPTの分割を理解します。必要に応じてタイトルとヘッダーをがあればCopilotはより理解が高まります。PPTを作成する際にWordの画像を組み込もうとしますので必要な画像はWord文章に含めてください。テンプレートを用いたPPTを作成する際は、そのテンプレートをからCopilotを始めてください。

 *Copilot for Microsoft 365*

 Contoso CipherGuard Product Specification.docx

```prompt
クライアントとのミーティングの議題を 1 時間で作成し、プロジェクトの目標、ミッション ステートメント、完了予定日などを含めます。/Contoso CipherGuard Product Specification.docx の情報を使用して、未解決の項目と未回答の質問を探します。アジェンダは、時間配分のある表形式にすべきであり、最後に質問するための変更を人々に与えるようにしてください。
```

****

**Module3**

*Word*

**Graphic Design Institute - Employee Benefits.docx**

テキストから表の作成
- ファイルを開きコピーを保存する
- 「Ctrl+A」キーを押して文書内のすべてのテキストを強調表示し、左に表示されるCopilotアイコンをクリックして **表として視覚化** をクリックする

  ```prompt
  テーブルとして視覚化します。これらの福利厚生を潜在的な従業員に伝える明確な方法が必要です。従業員にとっての福利厚生と、それが従業員のウェルビーイングにどのように影響するかを明確に説明する 3 番目の列を含めます。
  ```

*PowerPoint*

スライドの追加

```prompt
女子オリンピックサッカーの歴史に関するスライドを追加してください
```

```prompt
ピザ生地を作っているシェフの画像を追加してください
```

*Excel*

**Fabrikam Q1 marketing campaigns.xlsx**

テーブル操作
- ファイルを開きコピーを保存する

```prompt
最も影響力のあるキャンペーンオーナーを探します。3 つ目の列を追加して、エンゲージメントしたユーザーあたりの純収益を予算コストを考慮して計算します。
```

```prompt
エンゲージしたユーザーあたりの純収益の降順で並べ替えてください。
```

****

**Module4**

*Word*

**Market Analysis Report for Mystic Spice Premium Chai Tea.docx**

文書に関する質問

```prompt
行動に移す呼びかけはありますか？
```

```prompt
この市場分析レポートには、私たちの課題や懸念に対処するための行動に移す呼びかけはありますか？マーケティング計画に、プロモーション計画や期間限定割引など、明確で具体的な行動計画が含まれているかどうかを確認してください。必要に応じて、行動に移す呼びかけを改善するための提案を提供してください。
```

*PowerPoint*

**Mystic Spice Premium Chai Market Analysis Presentation.pptx**

スライドの整理（セクション）や追加、作成
- ファイルを開きコピーを保存する

```prompt
このプレゼンテーションを整理する
```

```prompt
このプレゼンテーションは、来週のエグゼクティブ製品レビュー用に使用します。製品情報については /Mystic Spice Premium Chai Tea product description.docx を参照してください。スライドを製品別に配置し、概要、主な機能と利点のリスト、顧客からのフィードバックを含めます。
```

*Excel*

Fabrikam Q1 marketing campaigns.xlsx

式の説明

```prompt
ユーザーエンゲージメントの計算方法を理解する必要があります。引数と構文を含む数式の詳細な内訳を提供してください。
```

```prompt
投資収益率を決定するのに役立つ追加の式を提案してください。
```

```prompt
投資収益率をJ列に追加してください
```

