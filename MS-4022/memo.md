# **MS-4022 Copilot Studioで Microsoft 365 Copilot を拡張する**

最終更新日 2025/11/17

## コース概要

- 3時間コース
- Microsoft Copilot Studio を使用して、Microsoft 365 Copilot を拡張する「宣言型エージェント」を構築します

> [!NOTE] 
> 1. Copilot Studio（Lite Experience） https://m365.cloud.microsoft/chat (簡易版)
> 2. Microsoft Copilot Studio https://copilotstudio.microsoft.com/ (フル機能版) ← こちらを使用する


## **研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

MS-4022で Microsoft 365 Copilot 環境がなく自身で検証したい場合は以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境（[接続テスト](https://labondemand.com/Launch/949F2C16)）で提供されました。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

## **リンク一覧およびメモ**
> [!NOTE]
> リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

[MS-4022 テキスト](https://learn.microsoft.com/ja-jp/training/courses/ms-4022)

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

## **Lab 概要**

MS-4022 ラボトップ [日本語](https://github.com/MicrosoftLearning/MS-4022-Extend-Microsoft-365-Copilot-in-Copilot-Studio.ja-jp/tree/main/Instructions/Labs)

- MS-4022トレーニングコースでは Microsoft 365 Copilot が利用可能なラボ環境が提供されます。自身の環境に Microsoft 365 Copilot が導入されている場合は、自分の環境でプロンプトを実施することができます。（ラボで使用するファイルは別途取得できます。）

- [01-create-declarative-agent](https://github.com/MicrosoftLearning/MS-4022-Extend-Microsoft-365-Copilot-in-Copilot-Studio.ja-jp/blob/main/Instructions/Labs/01-Build-your-first-declarative-agent/01-create-declarative-agent.md)
    - 初回起動時にすでにエージェントの作成が行われている状態ですが、キャンセルしてエージェント画面に戻り、Microsoft 365 Copilot を選択して、エージェントの**追加**をクリックします。

## Labの入力を日本語化しました。参考程度ですが活用できます。

```powershell
Contoso Electronics 製品に関するお問い合わせに対応する、製品サポート用エージェントを作成したいと考えています。
```

```powershell
Contoso Electronics の製品についてのご質問に回答する製品サポート用エージェント
```

```powershell
- あなたは Contoso Electronics 製品に関するお問い合わせに回答するサポートエージェントです。
- ユーザーへの回答は、必ず毎回 "Copilot エージェントをご利用いただき、ありがとうございます。" から始め、その後に質問への回答と支援を行ってください。
- Contoso Electronics 製品と関係のない質問には回答しないでください。
- 対応は終始、丁寧で親しみやすいトーン を維持してください。
```


***

何ができますか？

Contoso Electronics の製品に関するご質問にお答えします。

- あなたは、Contoso Electronics 製品に関する質問に回答するエージェントです。
- すべての回答は、ユーザーの質問やコメントに対する感謝の言葉を、明るく前向きなトーンで述べるところから開始し、その後に質問やコメントへの回答を行ってください。
- 回答にあたっては、SharePoint 上の「Products」フォルダーに保存されているドキュメントを情報源として使用します。
- 必要な情報が見つからない場合は、担当チームへ問い合わせるようユーザーに案内してください。
- 回答は簡潔にまとめ、必ず参照元（引用元）を明記するようにしてください。

農家の方に適した製品を提案してください。

Eagle AirがContoso Quadよりも適している理由を説明してください

Mark8はいつリリースされましたか？

***

**ドラフト** をベースに、商品の販促ピッチを考案してください

マイティ・メカニカルペンシルは、今までにないワクワクと利便性を兼ね備えた新時代のシャープペンシルです。単なる革新的な製品というだけでなく、使うこと自体が楽しくなる一本です。

ピッチは、以下のContosoガイドラインに従って作成してください：
- 短い「フック（掴み）」から始めること
- 独自の価値提案（ユニーク・バリュー・プロポジション）を説明すること
- 最後は「コール・トゥ・アクション（行動喚起）」で締めくくること
- ワクワクさせるような、影響力のあるトーン（語調）を使うこと

マーケティングピッチの作成は、"マーケティングピッチ"プロンプトツールを使用して、ユーザーのドラフト案に基づき、Contosoのガイドラインに沿った製品ピッチにします。

マーケティングピッチ
- 以下の下書き（ドラフト）に基づき、Contosoのガイドラインに従ってマーケティングピッチを作成してください。

新製品のドローンコントローラーで製品名は"プロコン"です。この製品はContosoだけではなく他社の製品のプロファイル情報を読み込むことで統一して使用できます。製品ごとにコントローラーを変えることなく同じコントローラーを使用することができ、使用者はすぐにドローンのコントロールが容易に行うことができます。