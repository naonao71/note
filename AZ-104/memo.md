**AZ-104: Microsoft Azure 管理者**
-

最終更新日 2025/02/14

---

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

AZ-104のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境で提供されました。
> - このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

AZ-104 ラボコンテンツ [日本語](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator.ja-jp/tree/main/Instructions/Labs) / [英語](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/tree/master/Instructions/Labs)

<!--

[AZ-104 ラボコンテンツ（翻訳修正版）](https://github.com/naonao71/AZ-104JA-MicrosoftAzureAdministrator/tree/master/Instructions/Labs)

[AZ-104 ラボコンテンツ](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator.ja-jp)

[AZ-104 ラボコンテンツ（翻訳修正版）](https://github.com/naonao71/AZ-104JA-MicrosoftAzureAdministrator/tree/master/Instructions/Labs)

[トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/users/msftofficialcurriculum-4292/collections/xe42fkkpzr6roe?wt.mc_id=esi_m2l_content_wwl)
-->

**リンク一覧およびメモ**
-

[AZ-104テキスト](https://learn.microsoft.com/ja-jp/training/courses/az-104t00?wt.mc_id=esi_m2l_content_wwl#study-guide)

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

- トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
- メールアドレスも新規に作成する（既存メールアドレスに紐づけない : xxx@outlook.com）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するラボ環境

 > LODS環境は英語キーボードに設定されています。日本語キーボード設定に変更するにはLODS環境で下記コマンドを実行します。

```powershell
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "LayerDriver JPN" -Value "kbd106.dll"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardType" -Value 7
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardSubtype" -Value 2
Restart-Computer -Force
```

[AZ-104補足資料](https://github.com/naonao71/note/blob/main/AZ-104/pdf/AZ-104%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99v1.5.pdf)

- ローカルにダウンロードする

---

**AZ-104 タイムスケジュール**
-

| |Day1|Day2|Day3|Day4|
|:----|:----|:----|:----|:----|
|午前|環境構築</BR>モジュール1| 前日の振り返り</BR>モジュール4|前日の振り返り</BR>モジュール7|前日の振り返り</BR>モジュール9</BR>モジュール10|
|午後|モジュール2</BR>モジュール3</BR>自己学習（LABなど）|モジュール5</BR>モジュール6</BR>自己学習（LABなど） |モジュール8</BR>自己学習（LABなど）|モジュール11</BR>自己学習（LABなど）|


> - 進行状況によってはこのスケジュール通りに進まないことがあります。 
> - すべてのラボを講義中に行わないことがあります。その場合は、別途ご自身の都合がよい時間に行ってください。

---

## 講義

前半2時間が講義、後半1時間が演習（希望者のみ）となります。

- [開始時のご案内](../opening.md)
- 講義
  - [講義資料PDF](https://github.com/naonao71/note/blob/main/AZ-104/pdf/AZ-104%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99v1.5.pdf)
- [終了時のご案内](../closing-cloudslice.md)
- 満足度アンケート
- 演習（希望者のみ）・ご質問対応など


**モジュールに対応したテキストのリンク**
-

モジュール01: 
- [Microsoft Entra ID の概要](https://learn.microsoft.com/ja-jp/training/modules/understand-azure-active-directory/)
- [ユーザーが Microsoft Entra のセルフサービス パスワード リセットを使用してパスワードをリセットできるようにする](https://learn.microsoft.com/ja-jp/training/modules/allow-users-reset-their-password/)
- [ユーザー アカウントとグループ アカウントを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-user-group-accounts/)
- [Microsoft Entra ID で Azure ユーザーとグループを作成する](https://learn.microsoft.com/ja-jp/training/modules/create-users-and-groups-in-azure-active-directory/)

モジュール02: 
- [サブスクリプションを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-subscriptions/)
- [Azure ポリシーを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-policy/)
- [ロールベースのアクセス制御の構成](https://learn.microsoft.com/ja-jp/training/modules/configure-role-based-access-control/)
- [Azure ロールベースのアクセス制御 (Azure RBAC) を使用した Azure リソースのセキュリティ保護](https://learn.microsoft.com/ja-jp/training/modules/secure-azure-resources-with-rbac/)

モジュール03: 
- [Azure 管理者向けの前提条件](https://learn.microsoft.com/ja-jp/training/paths/az-104-administrator-prerequisites/)

モジュール04:
- [仮想ネットワークを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-networks/)
- [Azure デプロイの IP アドレス指定スキーマを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-ip-addressing-for-azure/)
- [ネットワーク セキュリティ グループを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-network-security-groups/)
- [Azure DNS でドメインをホストする](https://learn.microsoft.com/ja-jp/training/modules/host-domain-azure-dns/)

モジュール05:
- [Azure Virtual Network ピアリングを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-vnet-peering/)
- [Azure 仮想ネットワーク全体にサービスを分散させ、仮想ネットワーク ピアリングを使用して統合する](https://learn.microsoft.com/ja-jp/training/modules/integrate-vnets-with-vnet-peering/)
- [ネットワーク ルーティングとエンドポイントを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-network-routing-endpoints/)
- [ルートを使用して Azure デプロイでのトラフィック フローを管理および制御する](https://learn.microsoft.com/ja-jp/training/modules/control-network-traffic-flow-with-routes/)

モジュール06:
- [Azure Load Balancer を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-load-balancer/)
- [Azure Application Gateway を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-application-gateway/)
- [Azure Load Balancer を使用してアプリケーションのスケーラビリティと回復性を向上させる](https://learn.microsoft.com/ja-jp/training/modules/improve-app-scalability-resiliency-with-load-balancer/)
- [Network Watcher を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-network-watcher/)

モジュール07:
- [Azure でのストレージの実装と管理](https://learn.microsoft.com/ja-jp/training/paths/az-104-manage-storage/)

モジュール08:
- [仮想マシンの構成](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-machines/)
- [Azure CLI を使用して仮想マシンを管理する](https://learn.microsoft.com/ja-jp/training/modules/manage-virtual-machines-with-azure-cli/)
- [Azure で Windows 仮想マシンを作成する](https://learn.microsoft.com/ja-jp/training/modules/create-windows-virtual-machine-in-azure/)
- [仮想マシンの可用性を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-machine-availability/)

モジュール09:
- [ Azure App Service プランを構成します](https://learn.microsoft.com/ja-jp/training/modules/configure-app-service-plans/)
- [Azure App Service の構成](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-app-services/)
- [Azure App Service で Web アプリケーションをホストする](https://learn.microsoft.com/ja-jp/training/modules/host-a-web-app-with-azure-app-service/)
- [Azure Container Instances を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-container-instances/)

モジュール10:
- [仮想マシンのバックアップを構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-machine-backups/)

モジュール11:
- [Azure Monitor を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-monitor/)
- [Azure Monitor を使用して Azure 仮想マシンを監視する](https://learn.microsoft.com/ja-jp/training/modules/monitor-azure-vm-using-diagnostic-data/)
- [Azure Monitor アラートを使用したインシデント対応の向上](https://learn.microsoft.com/ja-jp/training/modules/incident-response-with-alerting-on-azure/)
- [Log Analytics の構成](https://learn.microsoft.com/ja-jp/training/modules/configure-log-analytics/)
- [Azure Monitor ログを使用して Azure インフラストラクチャを分析する](https://learn.microsoft.com/ja-jp/training/modules/analyze-infrastructure-with-azure-monitor-logs/)

---

**ラボシミュレーション**</BR>
-

実機ではなくシミレーターを使用して動作確認を行うことができます（英語画面）

  - モジュール 01 - ID を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-user-group-accounts/7-simulation-user-groups)
  - モジュール 02 – ガバナンスとコンプライアンスを管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-policy/9-simulation-policy)
  - モジュール 03 – Azure リソースを管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-resources-tools/5-simulation-powershell)
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-resources-tools/7-simulation-command-line)
  - モジュール 04 – 仮想ネットワークを管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-networks/9-simulation-create-networks)
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-network-security-groups/7-simulation-create-network-groups)
  - モジュール 05 – サイト間の接続性を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-vnet-peering/6-simulation-peering)
  - モジュール 06 – ネットワーク トラフィック管理を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-network-routing-endpoints/7-simulation-routing)
  - モジュール 07 – Azure Storage を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-storage-security/8-simulation-storage)
  - モジュール 08 – Azure Virtual Machines を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-machine-availability/11-simulation-machine-scale)
  - モジュール 09 - PaaS Compute オプションを管理する
    - [ラボシミュレーション9a](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-app-services/11-simulation-web-apps)
    - [ラボシミュレーション9b](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-container-instances/6-simulation-containers)
    - [ラボシミュレーション9c](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-kubernetes-service/8-simulation-kubernetes)
  - モジュール 10 – データ保護を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-virtual-machine-backups/11-simulation-machine-backups)
  - モジュール 11 - 監視を管理する
    - [ラボシミュレーション](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-monitor/8-simulation-monitor)

---

**コンテンツ**
-

<!--

AZ-104

- [1.1. モジュール 01 - ID を管理する](#11-モジュール-01---id-を管理する)
- [**補足情報**](#補足情報)
- [1.2. モジュール 02 – ガバナンスとコンプライアンスを管理する](#12-モジュール-02--ガバナンスとコンプライアンスを管理する)
- [**補足情報**](#補足情報-1)
- [1.3. モジュール 03 – Azure リソースを管理する](#13-モジュール-03--azure-リソースを管理する)
- [**補足情報**](#補足情報-2)
- [1.4. モジュール 04 – 仮想ネットワークを管理する](#14-モジュール-04--仮想ネットワークを管理する)
- [**補足情報**](#補足情報-3)
- [1.5. モジュール 05 – サイト間の接続性を管理する](#15-モジュール-05--サイト間の接続性を管理する)
- [**補足情報**](#補足情報-4)
- [1.6. モジュール 06 – ネットワーク トラフィック管理を管理する](#16-モジュール-06--ネットワーク-トラフィック管理を管理する)
- [**補足情報**](#補足情報-5)
- [1.7. モジュール 07 – Azure Storage を管理する](#17-モジュール-07--azure-storage-を管理する)
- [**補足情報**](#補足情報-6)
- [1.8. モジュール 08 – Azure Virtual Machines を管理する](#18-モジュール-08--azure-virtual-machines-を管理する)
- [**補足情報**](#補足情報-7)
- [1.9. モジュール 09 - PaaS Compute オプションを管理する](#19-モジュール-09---paas-compute-オプションを管理する)
- [1.10. モジュール 10 – データ保護を管理する](#110-モジュール-10--データ保護を管理する)
- [**補足情報**](#補足情報-8)
- [1.11. モジュール 11 - 監視を管理する](#111-モジュール-11---監視を管理する)
- [**補足情報**](#補足情報-9)
-->


## 1.1. モジュール 01 - ID を管理する

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

**補足情報**
-

[Azure Active Directory](https://github.com/naonao71/note/blob/main/AZ-104/mod01-01-aad.md)

[ユーザーの種類](https://github.com/naonao71/note/blob/main/AZ-104/mod01-02-user.md)

## 1.2. モジュール 02 – ガバナンスとコンプライアンスを管理する

[Azure でのデータ所在地](https://azure.microsoft.com/ja-jp/global-infrastructure/data-residency/)

[リージョン別の利用可能な製品](https://azure.microsoft.com/ja-jp/global-infrastructure/services/?regions=japan-east,japan-west,non-regional&products=all)

[Azureが提供しているサービス一覧](https://docs.microsoft.com/ja-jp/azure/?product=all)

[Microsoft Azure プランの詳細](https://azure.microsoft.com/ja-jp/support/legal/offer-details/)

[Azure Cost Management および Billing のドキュメント](https://docs.microsoft.com/ja-jp/azure/cost-management-billing/)

[Azure Advisor を使用してサービス コストを削減する](https://docs.microsoft.com/ja-jp/azure/advisor/advisor-cost-recommendations)

[Azure リソースのコンプライアンス データを取得する](https://docs.microsoft.com/ja-jp/azure/governance/policy/how-to/get-compliance-data)

[Azure AD の組み込みロール](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/permissions-reference)

[Azure ロール](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/rbac-and-directory-admin-roles#azure-roles)

**Azure RBAC Role の確認方法**

``` powershell
Get-AzRoleDefinition 'Owner'
Get-AzRoleDefinition contributor
Get-AzRoleDefinition 'user access administrator'
```

[Azure RBAC のベスト プラクティスAzure RBAC のベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/best-practices)


**補足情報**
-

[サブスクリプション](https://github.com/naonao71/note/blob/main/AZ-104/mod02-01-subscription.md)

[ポリシー](https://github.com/naonao71/note/blob/main/AZ-104/mod02-02-policy.md)

[RBAC](https://github.com/naonao71/note/blob/main/AZ-104/mod02-03-rbac.md)

## 1.3. モジュール 03 – Azure リソースを管理する

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


**補足情報**
-

[Azure Resource Manager](https://github.com/naonao71/note/blob/main/AZ-104/mod03-01-arm.md)

[Azure Portal](https://github.com/naonao71/note/blob/main/AZ-104/mod03-02-portal.md)

[Azure PowerShell](https://github.com/naonao71/note/blob/main/AZ-104/mod03-03-psh-cli.md)

[ARMテンプレート](https://github.com/naonao71/note/blob/main/AZ-104/mod03-04-template.md)

## 1.4. モジュール 04 – 仮想ネットワークを管理する

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


**補足情報**
-

[仮想ネットワーク コンポーネント](https://github.com/naonao71/note/blob/main/AZ-104/mod04-01-vnet.md)

[IPアドレス](https://github.com/naonao71/note/blob/main/AZ-104/mod04-02-ip.md)

[ネットワークセキュリティグループ（NSG）](https://github.com/naonao71/note/blob/main/AZ-104/mod04-03-nsg.md)

[Azure Firewall](https://github.com/naonao71/note/blob/main/AZ-104/mod04-04-firewall.md)

[Azure DNS](https://github.com/naonao71/note/blob/main/AZ-104/mod04-05-dns.md)
## 1.5. モジュール 05 – サイト間の接続性を管理する

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


**補足情報**
-

[VNetピアリング](https://github.com/naonao71/note/blob/main/AZ-104/mod05-01-peering.md)

[Azure ExpressRoute](https://github.com/naonao71/note/blob/main/AZ-104/mod05-03-expressroute.md)

## 1.6. モジュール 06 – ネットワーク トラフィック管理を管理する

[仮想ネットワーク トラフィックのルーティング](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-networks-udr-overview)

[仮想ネットワーク サービス エンドポイント](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-service-endpoints-overview)

[Azure 負荷分散を理解する](https://docs.microsoft.com/ja-jp/azure/architecture/guide/technology-choices/load-balancing-overview)

[Azure Load Balancer の SKU](https://docs.microsoft.com/ja-jp/azure/load-balancer/skus)

[リージョン間ロード バランサー (プレビュー)](https://docs.microsoft.com/ja-jp/azure/load-balancer/cross-region-overview)

[Load Balancer と Application Gateway の通信の違い](https://docs.microsoft.com/ja-jp/archive/blogs/jpaztech/lb_appgw_traffic_different)

[Azure Application Gateway のセッション アフィニティに関する問題をトラブルシューティングする](https://docs.microsoft.com/ja-jp/azure/application-gateway/how-to-troubleshoot-application-gateway-session-affinity-issues)

[Application Gateway の価格](https://azure.microsoft.com/ja-jp/pricing/details/application-gateway/)

**補足情報**
-

[ルーティング](https://github.com/naonao71/note/blob/main/AZ-104/mod06-01-routing.md)

[Azure Load Balancer](https://github.com/naonao71/note/blob/main/AZ-104/mod06-02-lb.md)

[Application Gateway](https://github.com/naonao71/note/blob/main/AZ-104/mod06-03-appgw.md)

## 1.7. モジュール 07 – Azure Storage を管理する

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

**補足情報**
-

[Azure Blob Storage](https://github.com/naonao71/note/blob/main/AZ-104/mod07-02-blob.md)

[Azure Files](https://github.com/naonao71/note/blob/main/AZ-104/mod07-03-files.md)

[Azure File Sync](https://github.com/naonao71/note/blob/main/AZ-104/mod07-04-filesync.md)

[ストレージのセキュリティ](https://github.com/naonao71/note/blob/main/AZ-104/mod07-05-security.md)

[ストレージの管理ツール](https://github.com/naonao71/note/blob/main/AZ-104/mod07-06-admin.md)

## 1.8. モジュール 08 – Azure Virtual Machines を管理する

[仮想マシン の SLA](https://azure.microsoft.com/ja-jp/support/legal/sla/virtual-machines/v1_9/)

障害シナリオとしては、以下の3つがあります。
- 計画外のHWメンテナンス
- 予期しないダウンタイム
- 計画メンテナンス
です。

[可用性セットの概要](https://docs.microsoft.com/ja-jp/azure/virtual-machines/availability-set-overview)

試験対策：
可用性セットは同じリージョン内に作成される
障害ドメインの最大は3
更新ドメインの最大は20

仮想マシンが14台あり、可用性セットを構築した。この際、更新ドメイン、障害ドメインにおける最大の仮想マシンダウン数は？

| |障害ドメイン1（ラック）|障害ドメイン2（ラック）|更新ドメイン|
|:----|:----|:----|:----|
|仮想マシン1|〇| |更新ドメイン1|
|仮想マシン2| |〇|更新ドメイン2|
|仮想マシン3|〇| |更新ドメイン3|
|仮想マシン4| |〇|更新ドメイン4|
|仮想マシン5|〇| |更新ドメイン5|
|仮想マシン6| |〇|更新ドメイン6|
|仮想マシン7|〇| |更新ドメイン7|
|仮想マシン8| |〇|更新ドメイン8|
|仮想マシン9|〇| |更新ドメイン9|
|仮想マシン10| |〇|更新ドメイン10|
|仮想マシン11|〇| |更新ドメイン1|
|仮想マシン12| |〇|更新ドメイン2|
|仮想マシン13|〇| |更新ドメイン3|
|仮想マシン14| |〇|更新ドメイン4|

[仮想マシン スケール セットとは](https://docs.microsoft.com/ja-jp/azure/virtual-machine-scale-sets/overview?context=/azure/virtual-machines/context/context)

[最新のスケール セット モデルで VM を最新の状態にする方法](https://docs.microsoft.com/ja-jp/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-upgrade-scale-set#how-to-bring-vms-up-to-date-with-the-latest-scale-set-model)

[Azure 仮想マシン スケール セットによる OS イメージの自動アップグレード](https://docs.microsoft.com/ja-jp/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-automatic-upgrade)

[Windows でのカスタムのスクリプト拡張機能](https://docs.microsoft.com/ja-jp/azure/virtual-machines/extensions/custom-script-windows)

[Azure Automation State Configuration の概要](https://docs.microsoft.com/ja-jp/azure/automation/automation-dsc-overview)

**補足情報**
-

[Azure Virtual Machines (VM)](https://github.com/naonao71/note/blob/main/AZ-104/mod08-01-vm.md)

[VMSS](https://github.com/naonao71/note/blob/main/AZ-104/mod08-02-vmss.md)

## 1.9. モジュール 09 - PaaS Compute オプションを管理する

[Docker Hub](https://hub.docker.com/)

[Azure Kubernetes Services (AKS) における Kubernetes の中心概念](https://docs.microsoft.com/ja-jp/azure/aks/concepts-clusters-workloads)

**コントロールプレーン**

|コンポーネント|説明|
|:----|:----|
|kube-apiserver|API サーバーは、基になる Kubernetes API が公開される方法となっています。 このコンポーネントは、kubectl や Kubernetes ダッシュボードなど、管理ツールに対する操作を提供します。|
|etcd|お使いの Kubernetes クラスターと構成の状態を維持するために、高可用性を備えた etcd が Kubernetes 内のキー値ストアとなります。|
|kube-scheduler|スケジューラでは、アプリケーションを作成またはスケーリングするときに、どのノードがワークロードを実行して開始できるかを判断します。|
|kube-controller-manager|コントローラー マネージャーでは、ポッドのレプリケートやノード調整の処理などのアクションを実行する、より小規模な多数のコントローラーを監視します。|

**ワーカーノード**

|コンポーネント|説明|
|:----|:----|
|kubelet|コントロール プレーンからのオーケストレーション要求と、要求されたコンテナーの実行のスケジュール設定を処理する Kubernetes エージェントです。|
|kube-proxy|各ノード上で仮想ネットワークを処理します。 プロキシはネットワーク トラフィックをルーティングして、サービスとポッドの IP アドレスを管理します。|
|コンテナー ランタイム|コンテナー化されたアプリケーションが仮想ネットワークやストレージなどの追加リソースを実行して操作できるようにします。 Linux ノード プール用に Kubernetes バージョン 1.19 以降を使用する AKS クラスターでは、コンテナー ランタイムとして containerd が使用されます。 Windows ノード プール用の Kubernetes バージョン 1.20 以降では、コンテナー ランタイム用に containerd をプレビューとして使用できますが、既定のコンテナー ランタイムは引き続き Docker です。 ノード プール用に以前のバージョンの Kubernetes を使用する AKS クラスターでは、コンテナー ランタイムとして Docker が使用されます。|

[Azure Kubernetes Service (AKS) でのアプリケーションに対するネットワークの概念](https://docs.microsoft.com/ja-jp/azure/aks/concepts-network)

**Azure 仮想ネットワーク**

AKS では、次の 2 つのネットワーク モデルのいずれかを使用するクラスターをデプロイできます。
- Kubenet ネットワーク
  - Kubenet ネットワークで構成すると、ノードではVNETのサブネットからIPアドレスを受け取り、ポッドではノードに割り当てられているサブネットとは論理的に異なるアドレス空間からIPアドレスを受け取ります。その後、ポッドではNATが構成され、トラフィックの送信元はノードのプライマリアドレスになります。
- Azure Container Networking Interface (CNI) ネットワーク
  - Azure CNIを使用すると、すべてのポッドでVNETのサブネットからIPアドレスを取得します。よって、ポッドには直接アクセス可能になります。この場合、ネットワーク空間全体で一意にする必要あります

**補足情報**

[Azure Container Instances](https://github.com/naonao71/note/blob/main/AZ-104/mod09-02-container.md)

[Azure Kubernetes Service (AKS)](https://github.com/naonao71/note/blob/main/AZ-104/mod09-03-aks.md)

## 1.10. モジュール 10 – データ保護を管理する

[Azure Backup のアーキテクチャとコンポーネント](https://docs.microsoft.com/ja-jp/azure/backup/backup-architecture)

[Azure VM バックアップの概要](https://docs.microsoft.com/ja-jp/azure/backup/backup-azure-vms-introduction)

[Azure Backup 用の VM スナップショットの Windows 拡張機能](https://docs.microsoft.com/ja-jp/azure/virtual-machines/extensions/vmsnapshot-windows)

[Azure Backup のレポートを構成する](https://docs.microsoft.com/ja-jp/azure/backup/configure-reports)

[Azure portal で Azure VM データを復元する方法](https://docs.microsoft.com/ja-jp/azure/backup/backup-azure-arm-restore-vms)

[Azure 仮想マシンのバックアップからファイルを回復する](https://docs.microsoft.com/ja-jp/azure/backup/backup-azure-restore-files-from-vm)

**補足情報**
-

[ストレージアカウントのデータ保護](https://github.com/naonao71/note/blob/main/AZ-104/mod10-01-backup.md)

[Recovery Servicesコンテナー](https://github.com/naonao71/note/blob/main/AZ-104/mod10-02-rsvault.md)

[Azure Site Recovery](https://github.com/naonao71/note/blob/main/AZ-104/mod10-03-asr.md)

## 1.11. モジュール 11 - 監視を管理する

収集するデータのソースは階層で考えることができます。
アプリケーションは、最上位に当たります。そして、下にある各階層はAzureプラットフォームの各コンポーネントになります。

|階層レベル|説明|収集方法|
|:----|:----|:----|
|アプリケーション コード|実際のアプリケーションとコードのパフォーマンスと機能に関するデータ (パフォーマンス トレース、アプリケーション ログ、ユーザー テレメトリを含む)。|インストルメンテーション パッケージをインストールしてApplication Insights を有効化します。|
|オペレーティング システム (ゲスト)|オペレーティング システムのコンピューティング リソースに関するデータ。|Log Analytics エージェントをインストールして Azure Monitor にクライアント データ ソースを収集すると共に、Dependency Agent をインストールして VM insights をサポートする依存関係を収集します。</BR></BR>Azure 仮想マシンについては、Azure Diagnostics 拡張機能をインストールして、ログとメトリックを Azure Monitor に収集します。</BR></BR>**[Azure Monitor エージェント (AMA)](https://docs.microsoft.com/ja-jp/azure/azure-monitor/agents/azure-monitor-agent-overview?tabs=PowerShellWindows)** は下記のレガシエージェントに代わるもの。</BR></BR>**Log Analytics エージェント**: </BR>データを Log Analytics ワークスペースに送信し、VM insights ソリューションと監視ソリューションをサポートします。</BR></BR>**Diagnostics 拡張機能**:</BR>Azure Monitor メトリック (Windows のみ)、Azure Event Hubs、Azure Storage にデータを送信します。</BR></BR>**Telegraf エージェント**: </BR>Azure Monitor メトリックにデータを送信します (Linux のみ)。|
|Azure リソース|各 Azure リソースの運用とパフォーマンスに関するデータ。</BR>**リソースログのこと**|自動的に収集されたメトリックをメトリックス エクスプローラーで確認します。Azure Monitor でログを収集するように診断設定を構成します。</BR>各種の監視ソリューションと Insights を利用すれば、特定の種類のリソースをさらに詳しく監視することができます|
|Azure サブスクリプション|Azure サブスクリプションにおける横断的なリソースサービス (Resource Manager、Service Health など) の正常性と管理に関連するデータ。</BR>**アクティビティログのこと**|ポータルで確認するか、ログ プロファイルを使用して Azure Monitor への収集を構成します。|
|Azure テナント|Azure Active Directory など、テナント レベルの Azure サービスの操作に関するデータ。</BR>**AADログのこと**|AAD データをポータルで確認するか、テナントの診断設定を使用して Azure Monitor への収集を構成します。|
|カスタム ソース|外部サービスからのデータや、他のコンポーネントまたはデバイスからのデータ。|Data Collector API を使用して任意の REST クライアントからログまたはメトリック データを Azure Monitor に収集します。|

> リソースログ、アクティビティログ、Azure Active Directory（AAD）ログを**Azureプラットフォームログ**と呼びます。

[Azure Monitor ログの概要](https://docs.microsoft.com/ja-jp/azure/azure-monitor/logs/data-platform-logs)

[Azure プラットフォーム ログの概要](https://docs.microsoft.com/ja-jp/azure/azure-monitor/essentials/platform-logs-overview)

[Azure アクティビティ ログ](https://docs.microsoft.com/ja-jp/azure/azure-monitor/essentials/activity-log)

[クエリのベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/best-practices)

[Azure Monitor を使用して仮想マシンを監視する](https://docs.microsoft.com/ja-jp/azure/azure-monitor//vm/monitor-virtual-machine)

[アクション ルール](https://docs.microsoft.com/ja-jp/azure/azure-monitor/alerts/alerts-action-rules?tabs=portal)

[IT Service Management Connector 概要](https://docs.microsoft.com/ja-jp/azure/azure-monitor/alerts/itsmc-overview)

**補足情報**
-

[Azure Monitor](https://github.com/naonao71/note/blob/main/AZ-104/mod11-01-azure-monitor.md)
