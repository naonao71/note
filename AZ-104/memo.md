# **AZ-104**

**リンク一覧およびメモ**

[AZ-104 ラボコンテンツ](https://microsoftlearning.github.io/AZ-104JA-MicrosoftAzureAdministrator/)

- ラボファイルをローカルにダウンロードする

[Skillpipe](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するテキスト

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

- トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
- メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するラボ環境

[トレーニング用サブスクリプションの取得](https://www.microsoftazurepass.com/)

- LODS を起動すると、Promo Code を入手できる

[AZ-104補足資料](https://github.com/naonao71/note/blob/main/AZ-104/pdf/AZ-104%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99v1.2.pdf)

- ローカルにダウンロードする

***
**AZ-104 タイムスケジュール**

| |Day1|Day2|Day3|Day4|
|:----|:----|:----|:----|:----|
|午前|環境構築</BR>モジュール1（Lab01）| 前日の振り返り</BR>モジュール4（Lab4）|前日の振り返り</BR>モジュール7|前日の振り返り</BR>モジュール9（Lab9b,c）|
|午後|モジュール2（Lab02a,b）</BR>モジュール3（Lab03a,b,c,d）</BR>|モジュール5</BR>モジュール6（Lab6）|モジュール8（Lab8）</BR>モジュール9（Lab9a）|モジュール10</BR>モジュール11 （Lab10,11）|
|オプションラボ||5| | |

> - 進行状況によってはこのスケジュール通りに進まないことがあります。 
> - すべてのラボを講義中に行わないことがあります。その場合は、別途ご自身の都合がよい時間に行ってください。
***
**コンテンツ**

# AZ-104
モジュール 01 - ID を管理する
モジュール 02 – ガバナンスとコンプライアンスを管理する
モジュール 03 – Azure リソースを管理する
モジュール 04 – 仮想ネットワークを管理する
モジュール 05 – サイト間の接続性を管理する
モジュール 06 – ネットワーク トラフィック管理を管理する
モジュール 07 – Azure Storage を管理する
モジュール 08 – Azure Virtual Machines を管理する
モジュール 09 - PaaS Compute オプションを管理する
モジュール 10 – データ保護を管理する
モジュール 11 - 監視を管理する

## モジュール 01 - ID を管理する

[Azure Active Directory の価格](https://azure.microsoft.com/ja-jp/pricing/details/active-directory/)

[Azure Active Directory のセルフサービス パスワード リセットのライセンス要件](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-sspr-licensing)

[Azure Active Directory でのユーザーの一括作成](https://docs.microsoft.com/ja-jp/azure/active-directory/enterprise-users/users-bulk-add)

**Point**
- テンプレートをダウンロードして最新版を利用する
- 1行目～3行目はいじらない
- 3行目にサンプルがあるが、実際には4行目から記述し、空白は入れない（ユーザープリンシパル名に空白があるとエラーになる）
- ファイルは文字コードをUTF-8 (BOM付き)で保存すること
- ExcelでCSV保存すると1行目に余分なカンマが入ってしまうので修正が必要となる。よって、メモ帳などで操作したほうがベター
- カンマは17個必要（サンプルは途中で終わっていて、アップロード時にカンマの数がチェックされる）
- 利用場所は記載したほうがベター（Office365のライセンス登録では必須となるため）

**ラボ内容**
- タスク1
  - ユーザーを作成します。
    - az104-01a-aaduser1(役職:クラウド管理者, 部署: IT)
	- az104-01a-aaduser2(役職:システム管理者, 部署: IT)
  - aaduser1には「ユーザー管理者」ロールを割り当てます。これにより、aaduser1は他のユーザーを管理（作成）することができるようになります。az104-01a-aaduser1で、Azure portalにサインインし、az104-01a-aaduser2を作成します。
  - サインインに使用するユーザー名は「az104-01a-aaduser1」ではなく、「az104-01a-aaduser1@ドメイン」形式（User Principal Name）となります。az104-01a-aaduser1をクリックすると、詳細画面のユーザー名の下に、この形式（User Principal Name）が表示されています。
- タスク2
  - Azure AD Premium P2 の開始方法（無料試用版のアクティブ化）と、ユーザーへの、Azure AD Premium ライセンスの割り当て方法を学習します。
  - グループを作成します。
	- 「IT クラウド管理者」グループ（jobTitle == クラウド管理者）
	- 「IT システム管理者」グループ（jobTitle == システム管理者）
	- 「IT ラボ管理者」グループ（割り当て済み、メンバー：「IT クラウド管理者」グループと「IT システム管理者」グループ）
	- 最初の2つのグループでは「動的メンバーシップ」で「動的ユーザー」を選択します。これにより、条件を満たしたユーザーがグループに自動的に所属するようになります。
	- 3つめのグループでは、グループにグループを追加しています。
- タスク3
  - 新しいテナントの作成方法を学びます。
  - 基本的には「1組織 1テナント」ですが、必要に応じて検証用のテナントなどを作成することができます。
  - テナントを作成したユーザーは、その新しいテナントの管理者（グローバル管理者）となります。
- タスク4
  - 新しいテナントに切り替えて、ユーザーを作成します。
    - az104-01b-aaduser1
  - 元のテナントに切り替えて、az104-01b-aaduser1 をゲストユーザーとして元のテナントに招待します。
- クリーンナップ
  - このラボで作成したユーザー、グループ、テナントなどを削除します。
  - Azure Active Directoryを削除する際は、自分が規定のディレクトリにいないと削除できない

## モジュール 02 – ガバナンスとコンプライアンスを管理する

[Azure でのデータ所在地](https://azure.microsoft.com/ja-jp/global-infrastructure/data-residency/)

[リージョン別の利用可能な製品](https://azure.microsoft.com/ja-jp/global-infrastructure/services/?regions=japan-east,japan-west,non-regional&products=all)

[Azureが提供しているサービス一覧](https://docs.microsoft.com/ja-jp/azure/?product=all)

[Microsoft Azure プランの詳細](https://azure.microsoft.com/ja-jp/support/legal/offer-details/)

[Azure Cost Management および Billing のドキュメント](https://docs.microsoft.com/ja-jp/azure/cost-management-billing/)

[Azure Advisor を使用してサービス コストを削減する](https://docs.microsoft.com/ja-jp/azure/advisor/advisor-cost-recommendations)

[Azure リソースのコンプライアンス データを取得する](https://docs.microsoft.com/ja-jp/azure/governance/policy/how-to/get-compliance-data)

[Azure AD の組み込みロール](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/permissions-reference)

[Azure ロール](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/rbac-and-directory-admin-roles#azure-roles)

**AD Role の確認方法**
--- powershell
Get-AzRoleDefinition 'Owner'
Get-AzRoleDefinition contributor
Get-AzRoleDefinition 'user access administrator'
---

[Azure RBAC のベスト プラクティスAzure RBAC のベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/best-practices)

**ラボ内容**

- タスク1
  - 新しい管理グループを作成し、管理グループの下にサブスクリプションを移動（追加）します。これによって、サブスクリプションの管理を、管理グループ単位で実行することができるようになります。
  - このラボでは、1つのサブスクリプションだけを扱っているのであまり管理グループの必要性はありません。実際の業務での利用例としては、複数のサブスクリプションを1つの管理グループにまとめて、管理グループ単位でロール割り当てやポリシー割り当てを行う形となります。
- タスク2
  - Azureにはたくさんの組み込みのRBACロールがありますが、それらのロールに適切な権限セットのものがない場合、「カスタムRBACロール」を作成して、利用することができます。
  - ここでは「Support Request Contributor (Custom)」というカスタムRBACロールを定義します。
  - このロール定義内の「Actions」で、リソースグループの情報の読み取りと、Azureサポートの全機能が利用できる、というアクションを指定しています。
  - ロール定義内の「AssignableScopes」では、このロールを割り当てすることができるスコープ（管理グループやサブスクリプション）を指定します。
- タスク3
  - 新しいユーザー「az104-02-aaduser1」を作成します。
  - タスク2で作成したロールをこのユーザーに割り当てます。
  - 「az104-02-aaduser1」でサインインし、ロールのActionsで許可された操作が実行できることを確認します。





