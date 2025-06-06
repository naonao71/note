**MS-4018 Microsoft 365 Copilotでドラフト、分析、プレゼンテーションを行う**
***

最終更新日 2025/04/23

**リンク一覧およびメモ**
> [!NOTE]
> リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

[MS-4018 テキスト](https://learn.microsoft.com/ja-jp/training/paths/draft-analyze-present-microsoft-365-copilot/)

> [!NOTE]
> MS-4018 は MS-4005 の後継トレーニングコースです。


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

MS-4018 ラボトップ [日本語](https://github.com/MicrosoftLearning/MS-4018-Draft-analyze-present-Microsoft-365-Copilot.ja-jp/tree/main/Instructions/Labs)

一般的なMS-4018トレーニングコースでは Microsoft 365 Copilot が利用可能なラボ環境が提供されます。自身の環境に Microsoft 365 Copilot が導入されている場合は、自分の環境でプロンプトを実施することができます。（ラボで使用するファイルは別途取得できます。）

> [!IMPORTANT]
> ラボで用意されているプロンプトは英語を直訳したものなので、日本語環境では動作しないことがあります。その場合は微調整が必要です。



