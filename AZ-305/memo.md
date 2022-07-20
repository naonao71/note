**AZ-305 Microsoft Azure Infrastructure Solutions の設計**
***
> このコースは、ケース スタディによるディスカッションを念頭に置いて設計されました。このコースは座学のみなので Azure Pass は提供されていません。

**リンク一覧およびメモ**

[AZ-305 ラボトップ](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/tree/main/Instructions/CaseStudy)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/learn/certifications/courses/az-305t00?wt.mc_id=esi_m2l_content_wwl)

[Azure アーキテクチャ アイコン](https://docs.microsoft.com/ja-jp/azure/architecture/icons/)
  - ラボで使用するのでダウンロードしてください。

[SC-200補足資料Ver1.2](https://github.com/naonao71/note/blob/main/SC-200/SC-200%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99Ver1.2.pdf)

- ローカルにダウンロードする

***

**ラボのリンク**

- モジュール01
  - [ガバナンス ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/01-Governance.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/01-GovernanceAnswer.md)
- モジュール02
  - [コンピューティング ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/02-Compute.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/02-ComputeAnswer.md)
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

***

# モジュール 01: ガバナンス ソリューションを設計する


**参考資料**
[Azure に移行されたワークロードのセキュリティ保護と管理のためのベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/migrate/azure-best-practices/migrate-best-practices-security-management#best-practice-name-resource-groups)
[リソースの名前付けとタグ付けの意思決定ガイド](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/decision-guides/resource-tagging/?toc=%2Fazure%2Fazure-resource-manager%2Fmanagement%2Ftoc.json#resource-tagging-patterns)
[Azure Policy の組み込みのポリシー定義](https://docs.microsoft.com/ja-jp/azure/governance/policy/samples/built-in-policies#general)

