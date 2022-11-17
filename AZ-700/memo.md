**AZ-700**
***

**研修の準備**

AZ-700のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)
- [Azure Pass サブスクリプションの入手](https://www.microsoftazurepass.com/)

 > このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。

トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://github.com/naonao71/note/blob/main/AZ-104/pdf/Opening.pdf)を参考に進めてください。

**リンク一覧およびメモ**
 
AZ-700 ラボトップ（[日本語](https://github.com/MicrosoftLearning/AZ-700JA-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/tree/master/Instructions/Exercises)/[英語](https://github.com/MicrosoftLearning/AZ-700-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/tree/master/Instructions/Exercises)）

[トレーニングで用するテキスト](https://docs.microsoft.com/ja-jp/users/msftofficialcurriculum-4292/collections/kox0iz3xxxy80j?wt.mc_id=esi_m2l_content_wwl)

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

[トレーニング用サブスクリプションの取得](https://www.microsoftazurepass.com/)

- LODS を起動すると、Promo Code を入手できる

[補足資料](https://github.com/naonao71/note/blob/main/AZ-700/AZ-700%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99Ver1.0.pdf)

- ダウンロードしてください。


<!--
[ESI Security Courses 配布用](https://github.com/naonao71/note/blob/main/AZ-500/ESI%20Security%20Courses%20%E9%85%8D%E5%B8%83%E7%94%A8.pdf)

- Microsoft が提供しているコース内容概要マップ
-->
***

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



