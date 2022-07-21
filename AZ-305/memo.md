B**AZ-305 Microsoft Azure Infrastructure Solutions の設計**
***
> このコースは、ケース スタディによるディスカッションを念頭に置いて設計されました。このコースは座学のみなので Azure Pass は提供されていません。

**リンク一覧およびメモ**

[AZ-305 ラボトップ](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/tree/main/Instructions/CaseStudy)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/learn/certifications/courses/az-305t00?wt.mc_id=esi_m2l_content_wwl)

[Azure アーキテクチャ アイコン](https://docs.microsoft.com/ja-jp/azure/architecture/icons/)
  - ダウンロードしてご利用ください。

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
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/03-NonrelationalstorageAnswer.md)
- モジュール04
  - [リレーショナル ストレージ の ケース スタディを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/04-Relationalstorage.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/04-RelationalstorageAnswer.md)
- モジュール05
  - データ統合ソリューションを設計する
- モジュール06
  - [アプリのアーキテクチャ ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/06-Apparchitecture.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/06-ApparchitectureAnswer.md)
- モジュール07
  - [認証および承認ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/07-Access.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/07-AccessAnswer.md)
- モジュール08
  - Azure リソースをログに記録して監視するソリューションを設計する
- モジュール09
  - [ネットワーク インフラストラクチャ ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/09-Networkingoption2.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/09-Networkingoption1Answer.md)
- モジュール10
  - ビジネス継続性ソリューションの設計
- モジュール11
  - 移行ソリューションを設計する

***

# モジュール 01: ガバナンス ソリューションを設計する

**Point**
- Azure階層
  - 管理グループ＞サブスクリプション＞リソースグループ＞リソース であり、継承される（RBAC、Policy）
- サブスクリプション
  - サブスクリプションは課金の境界であり、Azure階層のひとつ
  - サブスクリプションが組織で1つの場合は、管理グループを使用しなくても同様の管理
  - 複数のサブスクリプションを使用することで課金の分離が可能
    - Policy、RBACはそれぞれのサブスクリプションで行う必要あり（管理グループを使用することで継承を使用することができる）
  > 異なるサブスクリプションで作成した仮想ネットワークに仮想マシンはデプロイできないことに注意
- リソースグループ
  - リソースは必ずどこかのリソースグループに所属する。よって、複数のリソースグループに所属は不可。
  - リソースグループは、ポリシーやライフサイクルがすべてのリソースで同じ場合に適している。
    - テスト環境、サービス単位、リージョン、ロック範囲など
  - リソースグループを削除すると、そのリソースグループに紐づけされているすべてのリソースが削除される。
- リソースタグ
  - リソースを整理するためのもう１つの方法.
  - Key-Value形式
  - 同じタグを付与する際、リソースグループやリソースが異なっていても構わない.
  - リソースグループから継承しない.（デフォルトでは）
  - タグの単位で課金レポートが可能.
  - 日本語も扱える.
  - サブスクリプション、リソースグループ、リソースに付与できる
  - 管理グループには付与できない
  - タグの単位で課金レポートが可能


**タグのカテゴリ例**

| タグの種類 | 使用例 |
| --- | --- |
| 機能 | app = catalogsearch1</BR>tier = web</BR>webserver = apache</BR>env = prod, dev, staging |
| 分類 | confidentiality = private</BR>SLA = 24hours |
| 会計 | department = finance</BR>program = business-initiative</BR>region = northamerica |
| パートナーシップ | owner = jsmith</BR>contactalias = catsearchowners</BR>stakeholders = user1;user2;user3 |
| 目的 | businessprocess = support</BR>businessimpact = moderate</BR>revenueimpact = high |


**参考資料**

- [Azure に移行されたワークロードのセキュリティ保護と管理のためのベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/migrate/azure-best-practices/migrate-best-practices-security-management#best-practice-name-resource-groups)
- [リソースの名前付けとタグ付けの意思決定ガイド](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/decision-guides/resource-tagging/?toc=%2Fazure%2Fazure-resource-manager%2Fmanagement%2Ftoc.json#resource-tagging-patterns)
- [Azure Policy の組み込みのポリシー定義](https://docs.microsoft.com/ja-jp/azure/governance/policy/samples/built-in-policies#general)

