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

**Market Analysis Report for Mystic Spice Premium Chai Tea.docx** 

```prompt
このWord文書の競合分析のセクションを要約し、明日の営業会議でチームと話し合う主なポイントの概要を簡潔に説明します。要約は5つの重要なポイントにとどめ、簡単な言葉を使用してください。
```

**Mystic Spice Premium Chai Market Analysis Presentation.pptx**

```prompt
上司向けのこのPowerPointプレゼンテーションのスライド5〜10を要約し、クライアントと会う前の要点の概要を含めます。要点を箇条書きにし、プロフェッショナルな口調で表現してください。
```
