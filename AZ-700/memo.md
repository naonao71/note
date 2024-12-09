**AZ-700**
***

最終更新日 2024/12/03

**研修の準備**

AZ-700のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

 > このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。

トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://github.com/naonao71/note/blob/main/AZ-104/pdf/Opening.pdf)を参考に進めてください。

**リンク一覧およびメモ**
 
 <!--
AZ-700 ラボトップ（[日本語](https://github.com/MicrosoftLearning/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/tree/master/Instructions/Exercises)/[英語](https://github.com/MicrosoftLearning/AZ-700-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/tree/master/Instructions/Exercises)）
-->

[トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/users/msftofficialcurriculum-4292/collections/kox0iz3xxxy80j?wt.mc_id=esi_m2l_content_wwl)

- MS Learn にてテキストは公開されいますので、いつでもご利用できます。

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


[補足資料](https://github.com/naonao71/note/blob/main/AZ-700/AZ-700%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99Ver1.1.pdf)

- ダウンロードしてください。


<!--
[ESI Security Courses 配布用](https://github.com/naonao71/note/blob/main/AZ-500/ESI%20Security%20Courses%20%E9%85%8D%E5%B8%83%E7%94%A8.pdf)

- Microsoft が提供しているコース内容概要マップ
-->
***

**ラボのシミュレーション**
- モジュール01
  - [Azure で仮想ネットワークを設計および実装する](https://learn.microsoft.com/ja-jp/training/modules/introduction-to-azure-virtual-networks/4-exercise-design-implement-virtual-network-azure)
  - [Azure で DNS 設定を構成する](https://learn.microsoft.com/ja-jp/training/modules/introduction-to-azure-virtual-networks/6-exercise-configure-domain-name-servers-configuration-azure)
  - [グローバル仮想ネットワーク ピアリングを使用して 2 つの Azure 仮想ネットワークを接続する](https://learn.microsoft.com/ja-jp/training/modules/introduction-to-azure-virtual-networks/8-exercise-connect-two-azure-virtual-networks-global)
- モジュール02
  - [仮想ネットワーク ゲートウェイを作成および構成する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-hybrid-networking/3-exercise-create-configure-local-network-gateway)
  - [Azure portal を使用して仮想 WAN を作成する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-hybrid-networking/7-exercise-create-virtual-wan-by-using-azure-portal)
- モジュール03
  - [ExpressRoute ゲートウェイを構成する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-azure-expressroute/4-exercise-configure-expressroute-gateway)
  - [ExpressRoute 回線のプロビジョニング](https://learn.microsoft.com/ja-jp/training/modules/design-implement-azure-expressroute/5-exercise-provision-expressroute-circuit)
- モジュール04
  - [Azure のロード バランサーを作成し、構成する](https://learn.microsoft.com/ja-jp/training/modules/load-balancing-non-https-traffic-azure/4-exercise-create-configure-azure-load-balancer)
  - [Azure portal を使用して Traffic Manager プロファイルを作成する](https://learn.microsoft.com/ja-jp/training/modules/load-balancing-non-https-traffic-azure/6-exercise-create-traffic-manager-profile-using-azure-portal)
- モジュール05
  - [Azure Application Gateway をデプロイする](https://learn.microsoft.com/ja-jp/training/modules/load-balancing-https-traffic-azure/4-exercise-deploy-azure-application-gateway)
  - [Azure portal を使用して高可用性 Web アプリケーションのフロント ドアを作成する](https://learn.microsoft.com/ja-jp/training/modules/load-balancing-https-traffic-azure/6-exercise-create-front-door-for-highly-available)
- モジュール06
  - [Azure portal を使用して仮想ネットワーク上に DDoS Protection を構成する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-network-security-monitoring/4-exercise-configure-ddos-protection-virtual-network-using-azure-portal)
  - [Azure portal を使用して Azure Firewall をデプロイして構成する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-network-security-monitoring/7-exercise-deploy-configure-azure-firewall-using-azure-portal)
  - [Azure Firewall Manager を使用して仮想ハブのセキュリティを保護する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-network-security-monitoring/9-exercise-secure-your-virtual-hub-using-azure-firewall-manager)
- モジュール07
  - [Azure PowerShell を使用して Azure プライベート エンドポイントを作成する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-private-access-to-azure-services/5-exercise-restrict-network-paas-resources-virtual-network-service-endpoints)
  - [仮想ネットワーク サービス エンドポイントを使用して、PaaS リソースへのネットワーク アクセスを制限する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-private-access-to-azure-services/6-exercise-create-azure-private-endpoint-using-azure-powershell)
- モジュール08
  - [Azure Monitor を使用してロード バランサー リソースを監視する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-network-monitoring/3-exercise-monitor-load-balancer-resource-using-azure-monitor)



<!--
**ラボのリンク（講師翻訳修正済み）**

- モジュール01
  - [Azure で仮想ネットワークを設計および実装する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M01-Unit%204%20Design%20and%20implement%20a%20Virtual%20Network%20in%20Azure.md)
  - [Azure で DNS 設定を構成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M01-Unit%206%20Configure%20DNS%20settings%20in%20Azure.md)
  - [グローバル仮想ネットワーク ピアリングを使用して 2 つの Azure 仮想ネットワークを接続する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M01-Unit%208%20Connect%20two%20Azure%20Virtual%20Networks%20using%20global%20virtual%20network%20peering.md)
- モジュール02
  - [仮想ネットワーク ゲートウェイを作成および構成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M02-Unit%203%20Create%20and%20configure%20a%20virtual%20network%20gateway.md)
  - [Azure portal を使用して仮想 WAN を作成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M02-Unit%207%20Create%20a%20Virtual%20WAN%20by%20using%20Azure%20Portal.md)
- モジュール03
  - [ExpressRoute ゲートウェイを構成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M03-Unit%204%20Configure%20an%20ExpressRoute%20Gateway.md)
  - [ExpressRoute 回線のプロビジョニング](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M03-Unit%205%20Provision%20an%20ExpressRoute%20circuit.md)
- モジュール04
  - [Azure のロード バランサーを作成し、構成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M04-Unit%204%20Create%20and%20configure%20an%20Azure%20load%20balancer.md)
  - [Azure portal を使用して Traffic Manager プロファイルを作成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M04-Unit%206%20Create%20a%20Traffic%20Manager%20profile%20using%20the%20Azure%20portal.md)
- モジュール05
  - [Azure Application Gateway をデプロイする](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M05-Unit%204%20Deploy%20Azure%20application%20gateway.md)
  - [Azure portal を使用して高可用性 Web アプリケーションのフロント ドアを作成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M05-Unit%206%20Create%20a%20front%20door%20for%20a%20highly%20available%20web%20application%20using%20the%20Azure%20portal.md)
- モジュール06
  - [Azure portal を使用して仮想ネットワーク上に DDoS Protection を構成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M06-Unit%204%20Configure%20DDoS%20Protection%20on%20a%20virtual%20network%20using%20the%20Azure%20portal.md)
  - [Azure portal を使用して Azure Firewall をデプロイして構成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M06-Unit%207%20Deploy%20and%20configure%20Azure%20Firewall%20using%20the%20Azure%20portal.md)
  - [Azure Firewall Manager を使用して仮想ハブのセキュリティを保護する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M06-Unit%209%20Secure%20your%20virtual%20hub%20using%20Azure%20Firewall%20Manager.md)
- モジュール07
  - [Azure PowerShell を使用して Azure プライベート エンドポイントを作成する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M07-Unit%203%20Create%20an%20Azure%20private%20endpoint%20using%20Azure%20PowerShell.md)
  - [仮想ネットワーク サービス エンドポイントを使用して、PaaS リソースへのネットワーク アクセスを制限する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M07-Unit%205%20Restrict%20network%20access%20to%20PaaS%20resources%20with%20virtual%20network%20service%20endpoints.md)
- モジュール08
  - [Azure Monitor を使用してロード バランサー リソースを監視する](https://github.com/naonao71/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/blob/master/Instructions/Exercises/M08-Unit%203%20Monitor%20a%20load%20balancer%20resource%20using%20Azure%20Monitor.md)

-->
***

**CloudSliceラボの講師コメント**

■Lab全般に関して
- 起動に5分程度かかります。
- VM起動後（10分程度）にLabVMが再起動する場合があります。その場合は、再起動後に再度Azureポータルにログインして作業を続けてください。
- 手順には注意事項が書いてあるので注意深く読んでください

■Lab1
このラボでは、AzureポータルからのVnetの作成、プライベートDNSゾーン作成、Vnetピアリングの作成などの手順を体験する。

- リソースグループの作成手順がありますが、すでに作成されています。もし、見えない場合な、再度ログインすると解消する可能性があります。
- 手順では、リージョンが日本語になっていますが、実際は英語ですので読み替えてください。
- プライベートDNSを検索しますが、DNSでは表示されないので、プライベートで検索してください。
- Vnetピアリング作成時に、リモート側から設定するので間違えないように

＊仮想ネットワークを作成
＊プライベートDNSを作成
＊仮想マシンをARMテンプレートから作成
＊Vnetピアリングを作成
＊疎通確認



■Lab2
このラボでは、仮想ネットワークをPowerShellで作成、VPN GWの作成、Virtual WANの作成（ハブを含む）手順を体験する

- VPN GWを2つパラレルで作成できますが、それぞれ30分程度かかる場合があります。
  > ＊注意：タスク9で「ManufacturingGW-to-CoreServicesGW」を作成しますが、リージョンは北ヨーロッパにしてください。手順では西ヨーロッパになっています。
- Virtual WANは「仮想 WAN」に読み替えてください
- Virtual WANで仮想ハブを作成する際、30-40分かかります。

＊仮想ネットワークをPowerShellで作成
＊仮想マシンをARMテンプレートから作成
＊VPN GWを作成
＊VPN GW間を接続
＊疎通確認

■Lab3
このラボでは、ExpressRoute作成の操作を体験します。その際に、サービスキーが作成されたことを確認します。実際には、そのサービスキーをプロバイダーに送る必要がありますが、ラボではここまで行いません。

- Vnet作成時にGatewaySubnetを作成しますが、defaultが作成されているので削除してからサブネットを作成します。その際、サブネットの目的を「Virtual Network Gateway」にすると、自動的に名前がGatewaySubnetになります。
- ExpressRoute GW作成には最大45分かかります。作成中に次の手順に進むこともできます。
- ExpressRoute作成時に回復性は標準の回復性にします。

■Lab4
このラボでは、Vnet作成、Azure Bastion作成、Webアプリ作成、Traffice Manager作成を行います。

- Vnet作成時にBastionを作成するが、手順では最初にサブネットを作成するので、Basiton作成時はタブを戻る必要があります。Bastionを設定すると自動的に「AzureBastionSubnet」サブネットが作成されます。
- Webアプリ作成時、East USだとエラーが発生する可能性があります。その場合は、リージョンを変えて試してください。（East US2など）
- Traffic Managerを作成して、Webアプリの接続を確認します。その際、WebアプリはHTTPなのでブラウザーでは警告がでますが無視して接続します。



■Lab5
このラボでは、Applicationg GatewayとFrontDoorを作成して負荷分散を行います。

- Application Gateway作成時、リスナー名は「listener」にする。日本語だとエラーになります。
- App ServiceでWebアプリを作成します。その後FrontDoor経由で負荷分散を試します。この際、FrontDoorからアクセスしますが、数分アクセスができない場合があります。その場合は、時間をおいてから再度アクセスしてみてください。

■Lab6
このラボでは、3つの演習があります。（2時間以上かかると思われます）3つ目の仮想ハブのラボは確実に1時間以上かかりますので、このラボを始める前に終了し、再度このラボを起動して3つ目のラボを始めることをお勧めします（ラボの起動時間が3時間のため）

- DDoS Protectionの構成を行います。
- FWとUDRの構成を行います。FWポリシーの構成を行います。
- 仮想ハブ（FW含む）を作成します。デプロイには30分以上かかる場合があります。
- DDoSテレメトリの構成時に、メトリックで「DDoS で破棄されたインバウンド パケット数」となっていますが、英語では「Inbound packets dropped DDoS」です。
- VM作成時にLinuxを選択しますが、パブリック受信ポートは「なし」にします。
- DDoSアラート（警告）の作成で、シグナル名「DDoS攻撃を受けているかどうか」は英語では「Under DDoS attack or not」です。
- DDoSアラート（警告）の作成で、演算子が「次の値より大きいか等しい」ですが「次の値以上」に読み替えます。
- BreakingPoint CloudでのDDoS攻撃のテストはできないのでカットしてください。
- ファイアウォール作成時に管理パブリックIPアドレスのセクションではチェックオフにします。
- 英語キーボードでは「＊」はSHIFT＋8になります。


■Lab7
このラボでは、サービスエンドポイントおよびプライベートエンドポイントを作成してテストします。

- VnetとNSGを作成します。サブネットは英語で記載するほうがわかりやすいと思います。
- M07のタスク 3、ステップ 8、タスク 4、ステップ 2、タスク 5、ステップ 3 の Azure での変更により、VirtualNetwork の代わりに Any を選択する必要があります。

■Lab8
このラボでは、ロードバランサーを作成して、動作させる。この情報（メトリック）を確認する。

- 分析情報を選択すると、トポロジが表示される。そのトポロジの上部に「View Detailed Metrics」があります。日本語の指示では「詳細なメトリックの表示」となっています。

***

**AZ-700のテキスト**

**モジュール01**
- [Azure 仮想ネットワークの概要](https://learn.microsoft.com/ja-jp/training/modules/introduction-to-azure-virtual-networks/?wt.mc_id=esi_m2l_content_wwl)</BR>

**モジュール02**
- [ハイブリッド ネットワークを設計して実装する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-hybrid-networking/?wt.mc_id=esi_m2l_content_wwl)

**モジュール03**
- [Azure ExpressRoute を設計して実装する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-azure-expressroute/?wt.mc_id=esi_m2l_content_wwl)

**モジュール04**
- [Azure での非 HTTP(S) トラフィックの負荷分散](https://learn.microsoft.com/ja-jp/training/modules/load-balancing-non-https-traffic-azure/?wt.mc_id=esi_m2l_content_wwl)

**モジュール05**
- [Azure での HTTP(S) トラフィックの負荷分散](https://learn.microsoft.com/ja-jp/training/modules/load-balancing-https-traffic-azure/?wt.mc_id=esi_m2l_content_wwl)

**モジュール06**
- [ネットワーク セキュリティを設計して実装する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-network-security-monitoring/?wt.mc_id=esi_m2l_content_wwl)

**モジュール07**
- [Azure サービスへのプライベート アクセスの設計と実装](https://learn.microsoft.com/ja-jp/training/modules/design-implement-private-access-to-azure-services/?wt.mc_id=esi_m2l_content_wwl)

**モジュール08**
- [ネットワーク監視を設計して実装する](https://learn.microsoft.com/ja-jp/training/modules/design-implement-network-monitoring/?wt.mc_id=esi_m2l_content_wwl)



***



