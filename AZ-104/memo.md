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
- [モジュール 01 - ID を管理する]
- [モジュール 02 – ガバナンスとコンプライアンスを管理する]
- [モジュール 03 – Azure リソースを管理する]
- [モジュール 04 – 仮想ネットワークを管理する]
- [モジュール 05 – サイト間の接続性を管理する]
- [モジュール 06 – ネットワーク トラフィック管理を管理する]
- [モジュール 07 – Azure Storage を管理する]
- [モジュール 08 – Azure Virtual Machines を管理する]
- [モジュール 09 - PaaS Compute オプションを管理する]
- [モジュール 10 – データ保護を管理する]
- [モジュール 11 - 監視を管理する]

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

``` powershell
Get-AzRoleDefinition 'Owner'
Get-AzRoleDefinition contributor
Get-AzRoleDefinition 'user access administrator'
```

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

## モジュール 03 – Azure リソースを管理する

[ARM テンプレートとは](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/templates/overview)

[Azure サービスのリソース プロバイダー](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/azure-services-resource-providers)

[Azure サブスクリプションとサービスの制限、クォータ、制約](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/azure-subscription-service-limits?toc=%2Fazure%2Fnetworking%2Ftoc.json)

**コマンドを使用したリソースロックデモ**

``` powershell
New-AzResourceGroup -Name az104-lab3 -Location eastus
Get-AzResourceGroup -Name az-104*
New-AzResourceLock -LockName LockGroup -LockLevel CanNotDelete -ResourceGroupName az104-lab3 -Force
Get-AzResourceLock
Get-AzResourceGroup -Name az104* | Remove-AzResourceGroup -Force
$lockId = (Get-AzResourceLock -ResourceGroupName az104-lab3).LockId
Remove-AzResourceLock -LockId $lockId -Force
Get-AzResourceGroup -Name az104* | Remove-AzResourceGroup -Force
```

[Azure Cloud Shell の概要](https://docs.microsoft.com/ja-jp/azure/cloud-shell/overview)

[Azure コマンド ライン インターフェイス (CLI) - 概要](https://docs.microsoft.com/ja-jp/cli/azure/?view=azure-cli-latest)

[Azure Resource Manager のデプロイ モード](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/templates/deployment-modes)

[Azure クイック スタート テンプレート](https://azure.microsoft.com/ja-jp/resources/templates/)

**ラボ内容**

- ラボ3a Azure portal を使用してリソースを管理する
  - タスク1
	- VMで使用するリソースである「ディスク」を単体で作成します。
	- このラボでは、「ディスク」は、比較的かんたんに作成できるリソースとして採用されています。このラボでは、ディスクそのものについて理解する必要はあまりありません。ディスクについてはモジュール8で解説します。
  - タスク2
	- リソースは、リソースグループ間で移動できることを理解しましょう
  - タスク3
	- リソースに削除ロックを設定します
    - 削除ロックがついていても、リソースの設定は変更できる（ディスクのタイプとサイズを変更できる）ということに着目しましょう
  - （クリーンアップは3dで実施します）
- ラボ3b ARM テンプレート を使用してリソースを管理する
  - タスク1
	- テンプレートを準備します。
  - タスク2
	- テンプレートから不要な部分を削除しています。
	- 削除する部分は、既存の VHD ファイルから Azure ディスクを作成する際に必要な記述です。今回のラボでは不要な部分なので削除しています。
	- テンプレートをデプロイします。
  - タスク3
	- デプロイされたリソースを確認しています。
  - （クリーンアップは3dで実施します）
- ラボ3c Azure PowerShell を使用してリソースを管理する
  - タスク1
	- Cloud Shellを起動し、PowerShellを使用できる状態にします
	- ここに打ち込んだコマンドはAzure上で実行されます
  - タスク2
	- ディスクの作成や、作成したディスクの情報の取得を行います
  - タスク3
	- ディスクを更新しています
  - （クリーンアップは3dで実施します）
- ラボ3d Azure CLI を使用してリソースを管理する
  - タスク1
	- Cloud Shellを起動し、Azure CLIを使用できる状態にします
  - タスク2
	- ディスクの作成や、作成したディスクの情報の取得を行います
  - タスク3
	- ディスクを更新しています
  - クリーンアップ
    - ラボ3a/3b/3c/3dのリソースをすべて削除します
## モジュール 04 – 仮想ネットワークを管理する

- サブネットを作成すると各サブネットには5つの予約されたアドレス作成されます。
  - x.x.x.0: ネットワーク アドレス
  - x.x.x.1: Azure によってデフォルト ゲートウェイ用に予約されています
  - x.x.x.2, x.x.x.3: Azure によって予約され、Azure DNS IP アドレスを VNet 空間にマップします
  - x.x.x.255: ネットワーク ブロードキャスト アドレス

[仮想マシンにプライベートIPアドレスを静的に登録する](https://docs.microsoft.com/ja-jp/azure/virtual-network/ip-services/virtual-networks-static-private-ip-arm-ps)


**コマンドを使用した仮想ネットワーク作成デモ**

``` powershell
$rgName='az104-lab4'
$location='eastus'
New-AzResourceGroup -Name $rgname -Location $location
New-AzVirtualNetwork -Name 'vnet-lab4' -ResourceGroupName $rgName -Location $location -AddressPrefix '10.10.0.0/16'
$vnet=Get-AzVirtualNetwork -Name vnet-lab4
Add-AzVirtualNetworkSubnetConfig -Name 'lab4-subnet1' -AddressPrefix '10.10.1.0/24' -VirtualNetwork $vnet
$vnet | Set-AzVirtualNetwork
```

[ネットワーク セキュリティ グループ](https://docs.microsoft.com/ja-jp/azure/virtual-network/network-security-groups-overview)

[仮想ネットワーク サービス タグ](https://docs.microsoft.com/ja-jp/azure/virtual-network/service-tags-overview)

[Azure プライベート DNS](https://docs.microsoft.com/ja-jp/azure/dns/private-dns-overview)

[仮想ネットワーク リンク](https://docs.microsoft.com/ja-jp/azure/dns/private-dns-virtual-network-links)

**ラボ内容**

- VNetの基礎（タスク1～4）
  - タスク1
    - VNetを作成します。同時に1つ目のサブネットも作られます。
    - 2つ目のサブネットをVNetに追加します。
  - タスク2
    - テンプレートを使用して、VNetに2つのVMをデプロイします。
  - タスク3
    - それぞれのVMのNICのIP構成で、以下を実施します。
    	- プライベートIPアドレスの割り当てを「静的」に変更し、IPアドレスを固定します。
    	- 新しいStandardのパブリックIPアドレスを作成して割り当てます。
  - タスク4
    - NSGがない場合、StandardのパブリックIPアドレスを使用したリモートデスクチップ（RDP）接続が失敗することを確認します。
    - 新しいNSGを作成し、受信セキュリティ規則で、RDP接続を許可します。
    - 2つのNICにNSGを関連付けします。
    - RDP接続が成功します。（このRDP接続はタスク5で使用します）
- Azure DNS プライベートDNSゾーン（タスク5）
  - タスク5
	- Azure DNSのプライベートDNSゾーン「contoso.org」を作成します。「自動登録」を有効化します。
	- タスク1で作成したVNetとゾーンをリンクします。
	- タスク2で作成した2つのVMが「az104-04-vm0.contoso.org」「az104-04-vm1.contoso.org」としてゾーンに自動登録されることを確認します。
	- vm0上で「nslookup az104-04-vm1.contoso.org」を実行し、vm1のプライベートIPアドレスに解決されることを確認します。
- Azure DNS パブリックDNSゾーン（タスク6）
  - タスク6
	- Godaddy（ドメインレジストラの一種。なお、App Serviceのカスタムドメイン購入でも内部的にGodaddyが使用されます）を使用して、インターネットでまだ使われていないドメインを検索します。
	- このドメインを購入した、という想定で、続く作業を進めます。
	- パブリックのDNSゾーンを作成します。
	- vm0とvm1の名前とパブリックIPアドレスをそれぞれゾーンのAレコードとして設定します。
	- Cloud Shellを使用して、nslookupを実行し、vm0とvm1のパブリックIPアドレスに解決されることを確認します。
	- 解決するFQDNのドメイン名は、実際に取得したものではないため、インターネットのDNSを使用した名前解決はできません。したがって、ここでは、nslookupの第2引数で、パブリックのDNSゾーンの「ネームサーバー」のいずれかを指定して、そのネームサーバーで名前解決をするようにnslookupに指示する必要があります。

## モジュール 05 – サイト間の接続性を管理する

[仮想ネットワーク ピアリングの作成、変更、削除](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-manage-peering)

[ポリシー ベース VPN の Azure のサポート](https://docs.microsoft.com/ja-jp/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps#azure-support-for-policy-based-vpn)

[ポイント対サイト VPN について](https://docs.microsoft.com/ja-jp/azure/vpn-gateway/point-to-site-about)

[VPN Gateway の価格](https://azure.microsoft.com/ja-jp/pricing/details/vpn-gateway/)

[VPN デバイスについて](https://docs.microsoft.com/ja-jp/azure/vpn-gateway/vpn-gateway-about-vpn-devices)

[高可用性接続について](https://docs.microsoft.com/ja-jp/azure/vpn-gateway/vpn-gateway-highlyavailable)

[ExpressRoute のドキュメント](https://docs.microsoft.com/ja-jp/azure/expressroute/)

[ExpressRoute Global Reach](https://docs.microsoft.com/ja-jp/azure/expressroute/expressroute-global-reach)

[Virtual WAN の FAQ](https://docs.microsoft.com/ja-jp/azure/virtual-wan/virtual-wan-faq)

[Virtual WAN の制限](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/azure-subscription-service-limits#virtual-wan-limits)

**ラボ内容**

vnet1(米国東部): vm1(10.51.0.4)</BR>
↓↑ローカル ピアリング </BR>
vnet0(米国東部): vm0(10.50.0.4)</BR>
↓↑グローバル ピアリング </BR>
vnet2(米国西部): vm2(10.52.0.4)</BR>

- タスク1
  - VNetとVMをデプロイします
- タスク2
  - vnet0とvnet1のローカルピアリングを構成します
  - vnet0とvnet2のグローバルピアリングを構成します
- タスク3
  - vm0からvm1への接続（ローカルピアリング経由）が成功することを確認します。
  - vm0からvm2への接続（グローバルピアリング経由）が成功することを確認します。
- 備考
  - vm1とvm2の通信（推移的な接続）は不可能です。

## モジュール 06 – ネットワーク トラフィック管理を管理する

[仮想ネットワーク トラフィックのルーティング](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-networks-udr-overview)

[仮想ネットワーク サービス エンドポイント](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-service-endpoints-overview)

[Azure 負荷分散を理解する](https://docs.microsoft.com/ja-jp/azure/architecture/guide/technology-choices/load-balancing-overview)

[Azure Load Balancer の SKU](https://docs.microsoft.com/ja-jp/azure/load-balancer/skus)

[リージョン間ロード バランサー (プレビュー)](https://docs.microsoft.com/ja-jp/azure/load-balancer/cross-region-overview)

[Load Balancer と Application Gateway の通信の違い](https://docs.microsoft.com/ja-jp/archive/blogs/jpaztech/lb_appgw_traffic_different)

[Azure Application Gateway のセッション アフィニティに関する問題をトラブルシューティングする](https://docs.microsoft.com/ja-jp/azure/application-gateway/how-to-troubleshoot-application-gateway-session-affinity-issues)

[Application Gateway の価格](https://azure.microsoft.com/ja-jp/pricing/details/application-gateway/)

## モジュール 07 – Azure Storage を管理する

[ストレージ アカウントの概要](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-account-overview)

[Azure ストレージ アカウントを別のリージョンに移動する](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-account-move?tabs=azure-portal)

[冗長構成の変更](https://docs.microsoft.com/ja-jp/azure/storage/common/redundancy-migration?tabs=portal)

[Azure Blob Storage の価格](https://azure.microsoft.com/ja-jp/pricing/details/storage/blobs/)

[ブロック BLOB、追加 BLOB、およびページ BLOB について](https://docs.microsoft.com/ja-jp/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs)

[Azure ファイル共有に対する AD DS 認証を有効にする](https://docs.microsoft.com/ja-jp/azure/storage/files/storage-files-identity-ad-ds-enable?WT.mc_id=Portal-Microsoft_Azure_FileStorage)

[Azure Files に対する Azure Active Directory Domain Services 認証を有効にする](https://docs.microsoft.com/ja-jp/azure/storage/files/storage-files-identity-auth-active-directory-domain-service-enable?tabs=azure-portal)

[AzCopy を使ってみる](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-use-azcopy-v10)

[AzCopy を使用して Azure BLOB ストレージにファイルをアップロードする](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-use-azcopy-blobs-upload?toc=/azure/storage/blobs/toc.json)

[AzCopy と Azure Active Directory (Azure AD) を使用して BLOB へのアクセスを承認する](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-use-azcopy-authorize-azure-active-directory)

