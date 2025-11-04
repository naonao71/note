# **SC-5003 Microsoft Purview を使用して情報保護とデータ損失防止を実装する**

最終更新日 2025/11/04

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境（[接続テスト](https://labondemand.com/Launch/949F2C16)）で提供されました。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

**リンク一覧およびメモ**
> [!NOTE]
> リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

[SC-5003 テキスト](https://learn.microsoft.com/ja-jp/training/paths/purview-implement-information-protection-data-loss-prevention/)

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

SC-5003 ラボトップ [日本語](https://github.com/MicrosoftLearning/SC-5003_Information-protection-and-Data-Loss-Prevention.ja-jp/tree/main/Instructions/Labs)





