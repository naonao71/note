**AZ-305 Microsoft Azure Infrastructure Solutions の設計**
***
> このコースは、ケース スタディによるディスカッションを念頭に置いて設計されました。このコースは座学のみなので Auzreのサブスクリプション（Azure Pass）は提供されていません。

**リンク一覧およびメモ**

[AZ-305 ケーススタディ](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/tree/main/Instructions/CaseStudy)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/learn/certifications/courses/az-305t00?wt.mc_id=esi_m2l_content_wwl)

[Azure アーキテクチャ アイコン](https://docs.microsoft.com/ja-jp/azure/architecture/icons/)
  - ダウンロードしてご利用ください。

[AZ-305補足資料Ver1.2](https://github.com/naonao71/note/blob/main/AZ-305/AZ-305%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99v1.2.pdf)

- ローカルにダウンロードする

***
**AZ-305 タイムスケジュール**

| |Day1|Day2|Day3|Day4|
|:----|:----|:----|:----|:----|
|午前|モジュール1|モジュール3|モジュール6|モジュール9|
|午後|モジュール2|モジュール4</BR>モジュール5|モジュール7</BR>モジュール8|モジュール10</BR>モジュール11|
> - 進行状況によってはこのスケジュール通りに進まないことがあります。 
***

**コンテンツ**



**ケーススタディのリンク**

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
  - [データ統合ソリューションを設計する(オリジナル)](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/05-dataintegration.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/05-dataintegrationAnswer.md)
- モジュール06
  - [アプリのアーキテクチャ ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/06-Apparchitecture.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/06-ApparchitectureAnswer.md)
- モジュール07
  - [認証および承認ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/07-Access.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/07-AccessAnswer.md)
- モジュール08
  - [Azure リソースをログに記録して監視するソリューションを設計する(オリジナル)](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/08-monitorsolution.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/08-monitorsolutionAnswer.md)
- モジュール09
  - [ネットワーク インフラストラクチャ ソリューションを設計する](https://github.com/MicrosoftLearning/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions.ja-jp/blob/main/Instructions/CaseStudy/09-Networkingoption2.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/09-Networkingoption1Answer.md)
- モジュール10
  - [ビジネス継続性ソリューションの設計(オリジナル)](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/10-bcpsolution.md)
  - [検討例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/10-bcpsolutionAnswer.md)
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


**Azure ポリシー**
Azureポリシーを使用して、あるべき姿を強制する（コンプライアンス）ことができる。そのポリシーをまとめたものがイニシアティブとなる。

Azureポリシーの機能には以下の3つの大きな柱があります
- 強制とコンプライアンス
  - 設定したポリシーに対してすべてのリソースに対するコンプライアンス評価としてコンプライアンス状態を確認できる
- ポリシーを大規模に運用
  - 管理グループにポリシーを適用できることで、1つのポリシーを数百のサブスクリプションとそのすべてのリソースに対して適用できる
- 修復
  - コンプライアンスが非準拠のリソースを自動的に修復する修復ポリシーを使用できる
  - 修復時にマネージドIDが必要な効果は**DeployIfNotExists**と**Modify**

[Azure Policy の効果について](https://docs.microsoft.com/ja-jp/azure/governance/policy/concepts/effects)

[Azure Policy の定義の構造](https://docs.microsoft.com/ja-jp/azure/governance/policy/concepts/definition-structure)

[チュートリアル:コンプライアンスを強制するポリシーの作成と管理](https://docs.microsoft.com/ja-jp/azure/governance/policy/tutorials/create-and-manage)

**Azure リソースの組み込みロール**

組み込みロール一覧
```powershell
Get-AzRoleDefinition | ft name
```
AD Role の確認例
```powershell
Get-AzRoleDefinition 'Owner'
Get-AzRoleDefinition 'contributor'
Get-AzRoleDefinition 'user access administrator'
```
[Azure ロールの定義について](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/role-definitions)

[Azure カスタム ロール](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/custom-roles)

[Azure Blueprint とは](https://docs.microsoft.com/ja-jp/azure/governance/blueprints/overview)

**参考資料**

- [Azure に移行されたワークロードのセキュリティ保護と管理のためのベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/migrate/azure-best-practices/migrate-best-practices-security-management#best-practice-name-resource-groups)
- [リソースの名前付けとタグ付けの意思決定ガイド](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/decision-guides/resource-tagging/?toc=%2Fazure%2Fazure-resource-manager%2Fmanagement%2Ftoc.json#resource-tagging-patterns)
- [Azure Policy の組み込みのポリシー定義](https://docs.microsoft.com/ja-jp/azure/governance/policy/samples/built-in-policies#general)

