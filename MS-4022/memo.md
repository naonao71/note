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
    - 