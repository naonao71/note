**Microsoft Entra ID を使用して権利を構成および管理する**
***

最終更新日 2025/02/07

**リンク一覧およびメモ**

 > リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

SC-5008 ラボトップ [英語](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID)/[日本語](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/tree/main/Instructions/Labs)

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

***
ラボ環境は英語で提供されています。そのまま行うこともできますが、ローカル環境からブラウザーを使用してラボを行うことができます。以下に日本語での指示をリンクします。

- [Lab 1: Microsoft Entra エンタイトルメント管理でカタログを作成する](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/blob/main/Instructions/Labs/LAB_01_build-catalog.md)
- [Lab 2: アクセス レビューを作成して管理する](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/blob/main/Instructions/Labs/Lab_02_create-access-review.md)
- [Lab 3: 利用規約と同意レポートを追加する](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/blob/main/Instructions/Labs/Lab_03_add-terms-of-use.md)
- [Lab 4: Microsoft Entra Identity Governance 設定で外部ユーザーのライフサイクルを管理する](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/blob/main/Instructions/Labs/Lab_04_manage-external-user-lifecycle.md)
- [Lab 5: Microsoft Entra ロールの Privileged Identity Management を構成する](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/blob/main/Instructions/Labs/Lab_05_configure-privileged-identity-management.md)
- [Lab 6: Identity Secure Score を使用したセキュリティ体制の監視と管理](https://github.com/MicrosoftLearning/SC-5008-Configure-and-manage-entitlement-with-Microsoft-Entra-ID.ja-jp/blob/main/Instructions/Labs/Lab_06_monitor-identity-secure-score.md)


