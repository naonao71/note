**Microsoft Copilot for Security の概要**
***

最終更新日 2024/08/18

**リンク一覧およびメモ**

 > リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

SC-5006 ラボトップ [英語](https://github.com/MicrosoftLearning/SC-5006-Get-started-with-Microsoft-Copilot-for-Security)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://learn.microsoft.com/ja-jp/training/paths/security-copilot-and-ai/)

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

***
モジュール
- [AI の基本的な概念](https://learn.microsoft.com/ja-jp/training/modules/get-started-ai-fundamentals/)
- [生成 AI の基礎](https://learn.microsoft.com/ja-jp/training/modules/fundamentals-generative-ai/)
- [責任ある生成 AI の基礎](https://learn.microsoft.com/ja-jp/training/modules/responsible-generative-ai/)
- [Microsoft Copilot for Security について説明する](https://learn.microsoft.com/ja-jp/training/modules/security-copilot-getting-started/)
- [Microsoft Copilot for Security のコア機能について説明する](https://learn.microsoft.com/ja-jp/training/modules/security-copilot-describe-core-features/)
- [Microsoft Copilot for Security の埋め込みエクスペリエンスについて説明する](https://learn.microsoft.com/ja-jp/training/modules/security-copilot-embedded-experiences/)
- [Microsoft Copilot for Security のユース ケースを確認する](https://learn.microsoft.com/ja-jp/training/modules/security-copilot-exercises/)

