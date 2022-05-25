**AZ-305 Microsoft Azure Infrastructure Solutions の設計**
***

**リンク一覧およびメモ**

[AZ-305 ラボトップ](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/tree/main/Instructions/CaseStudy)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/learn/certifications/courses/az-305t00?wt.mc_id=esi_m2l_content_wwl)

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

[トレーニング用サブスクリプションの取得](https://www.microsoftazurepass.com/)

- LODS を起動すると、Promo Code を入手できる

[SC-200補足資料Ver1.2](https://github.com/naonao71/note/blob/main/SC-200/SC-200%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99Ver1.2.pdf)

- ローカルにダウンロードする

***

**ラボのリンク**

- モジュール01
  - [ガバナンス ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/01-Governance.md)
- モジュール02
  - [コンピューティング ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/02-Compute.md)
- モジュール03
  - [非リレーショナル ストレージ の ケース スタディを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/03-Nonrelationalstorage.md)
- モジュール04
  - [リレーショナル ストレージ の ケース スタディを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/04-Relationalstorage.md)
- モジュール05
  - データ統合ソリューションを設計する
- モジュール06
  - [アプリのアーキテクチャ ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/06-Apparchitecture.md)
- モジュール07
  - [認証および承認ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/07-Access.md)
- モジュール08
  - Azure リソースをログに記録して監視するソリューションを設計する
- モジュール09
  - [ネットワーク インフラストラクチャ ソリューションを設計する_Part1](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/09-Networkingoption1.md)
  - [ネットワーク インフラストラクチャ ソリューションを設計する_Part2](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/09-Networkingoption2.md)
- モジュール10
  - ビジネス継続性ソリューションの設計
- モジュール11
  - 移行ソリューションを設計する

