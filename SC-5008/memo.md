**Microsoft Copilot for Security の概要**
***

最終更新日 2024/08/18

**リンク一覧およびメモ**

 > リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

SC-5008 ラボトップ [英語](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://learn.microsoft.com/ja-jp/training/paths/configure-manage-entitlement-microsoft-entra-id/)

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
- [エンタイトルメント管理を計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/plan-implement-entitlement-management/)
- [アクセス レビューの計画、実装、管理](https://learn.microsoft.com/ja-jp/training/modules/plan-implement-manage-access-review/)
- [Microsoft Entra ID を監視および保守する](https://learn.microsoft.com/ja-jp/training/modules/monitor-maintain-azure-active-directory/)
- [特権アクセスを計画し、実装する](https://learn.microsoft.com/ja-jp/training/modules/plan-implement-privileged-access/)
- [Microsoft Entra Permissions Management の多くの機能を確認する](https://learn.microsoft.com/ja-jp/training/modules/explore-features-of-permissions-management/)



