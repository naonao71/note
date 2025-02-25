**SC-5004 : Microsoft Defender XDR を使用してサイバー脅威を防ぐ**
***

最終更新日 2025/02/12

**リンク一覧およびメモ**

 > リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

SC-5004 ラボトップ [英語](https://github.com/MicrosoftLearning/Defend-against-cyberthreats-Microsoft-Defender-XDR/tree/master/Instructions/Labs)/[日本語](https://github.com/MicrosoftLearning/Defend-against-cyberthreats-Microsoft-Defender-XDR.ja-jp/tree/main/Instructions/Labs)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://learn.microsoft.com/ja-jp/training/paths/sc-5004-defend-against-cyberthreats-defender/)

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

- トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
- メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するラボ環境

 > LODS環境は英語キーボードに設定されています。日本語キーボード設定に変更するにはLODS環境で下記コマンドを実行します。
 > 2025/03 現在英語環境で提供されています。ラボの特性上、ポータルで言語を日本語にすることで日本語で演習できます。
 > ラボを起動して、Microosft Defender XDR の初期化を行ってから30分以上時間を置かないと Endpoint のメニューが出ない場合があります。

```powershell
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "LayerDriver JPN" -Value "kbd106.dll"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardType" -Value 7
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardSubtype" -Value 2
Restart-Computer -Force
```

***
モジュール
- [Microsoft Defender を使ってインシデントを軽減する](https://learn.microsoft.com/ja-jp/training/modules/mitigate-incidents-microsoft-365-defender/)
- [Microsoft Defender for Endpoint 環境をデプロイする](https://learn.microsoft.com/ja-jp/training/modules/deploy-microsoft-defender-for-endpoints-environment/)
- [Microsoft Defender for Endpoint でアラートと検出用に構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-settings-for-alerts-detections-microsoft-defender-for-endpoint/)
- [Microsoft Defender for Endpoint を使用した自動化の構成および管理](https://learn.microsoft.com/ja-jp/training/modules/configure-manage-automation-microsoft-defender-for-endpoint/)
- [Microsoft Defender for Endpoint でデバイスの調査を実行する](https://learn.microsoft.com/ja-jp/training/modules/perform-device-investigations-microsoft-defender-for-endpoints/)






