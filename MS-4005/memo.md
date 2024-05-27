**MS-4005 Microsoft Copilot for Microsoft 365 に対して効果的なプロンプトを作成する**
***

最終更新日 2023/06/07

**リンク一覧およびメモ**

MS-4005 ラボトップ [英語](https://github.com/MicrosoftLearning/MS-4005-Craft-effective-prompts-for-Microsoft-Copilot-for-Microsoft-365/tree/master/Instructions/Labs)

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


