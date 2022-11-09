**AZ-700**
***

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



**研修の準備**

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)
- [Azure Pass サブスクリプションの入手](https://www.microsoftazurepass.com/)

***

- [1. モジュール01](#1-モジュール01)
  - [1.1. Azure Active Directory の初期構成を実装する](#11-azure-active-directory-の初期構成を実装する)
  - [1.2. ID を作成、構成、管理する](#12-id-を作成構成管理する)
  - [1.3. 外部 ID を実装および管理する](#13-外部-id-を実装および管理する)
  - [1.4. ハイブリッド ID の実装と管理](#14-ハイブリッド-id-の実装と管理)
- [2. モジュール02](#2-モジュール02)
  - [2.1. 多要素認証によるセキュリティで Azure Active Directory ユーザーを保護する](#21-多要素認証によるセキュリティで-azure-active-directory-ユーザーを保護する)
  - [2.2. ユーザー認証を管理する](#22-ユーザー認証を管理する)
  - [2.3. 条件付きアクセスの計画、実装、管理を行う](#23-条件付きアクセスの計画実装管理を行う)
  - [2.4. Azure AD Identity Protection を管理する](#24-azure-ad-identity-protection-を管理する)
- [3. モジュール03](#3-モジュール03)
  - [3.1. SSO 用エンタープライズ アプリの統合を計画し、設計する](#31-sso-用エンタープライズ-アプリの統合を計画し設計する)
  - [3.2. SSO 用エンタープライズ アプリの統合を実装し、監視する](#32-sso-用エンタープライズ-アプリの統合を実装し監視する)
  - [3.3. アプリの登録を実装する](#33-アプリの登録を実装する)
- [4. モジュール04](#4-モジュール04)
  - [4.1. エンタイトルメント管理を計画して実装する](#41-エンタイトルメント管理を計画して実装する)
  - [4.2. アクセス レビューの計画、実装、管理](#42-アクセス-レビューの計画実装管理)
  - [4.3. 特権アクセスを計画し、実装する](#43-特権アクセスを計画し実装する)
  - [4.4. Azure Active Directory を監視および保守する](#44-azure-active-directory-を監視および保守する)

***

# 1. モジュール01
## 1.1. [Azure Active Directory の初期構成を実装する](https://docs.microsoft.com/ja-jp/learn/modules/implement-initial-configuration-of-azure-active-directory/?wt.mc_id=esi_m2l_content_wwl)


**管理ポータル**

- [Azure portal](https://portal.azure.com/)
- [Azure Active Directory 管理センター](https://aad.portal.azure.com/)
- [Microsoft 365 管理センター](https://admin.microsoft.com/)
- [Microsoft 365 Defender](https://security.microsoft.com/)

**Break Glass アカウントとは**
- 不測の事態に影響を受けない緊急用 全体管理者アカウント
  - フェデレーションサービスの障害によるログイン不可
  - MFA 利用不可 - 電話網障害等
  - 管理者アカウント保持者の退職等

**ベストプラクティス**
- クラウドアカウント（例: bg@contoso.onmicrosoft.com）を利用
- 永続管理者（PIMの対象ロールにしない）を利用
- すべての 条件付きアクセス、MFA 対象から除外
- 16 文字以上のランダムに生成されたパスワードを利用
- パスワードは紙に書いて、2つ以上に切ってそれぞれ金庫に保管
- アカウント利用を定期的に監査
- アカウントを最低 90 日に一度、利用可能か確かめる

[セキュリティの既定値群とは](https://docs.microsoft.com/ja-jp/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)

[Azure AD Multi-Factor Authentication の機能とライセンス](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-mfa-licensing)

**参照URL**
- [従来のサブスクリプション管理者ロール、Azure ロール、および Azure AD ロール](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/rbac-and-directory-admin-roles)
- [Azure ロールの定義について](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/role-definitions)
- [Privileged Identity Management のドキュメント](https://docs.microsoft.com/ja-jp/azure/active-directory/privileged-identity-management/)
- [方法:Azure AD Multi-Factor Authentication 登録ポリシーを構成する](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/howto-identity-protection-configure-mfa-policy)
- [条件付きアクセス: 管理者に対して MFA を必須にする](https://docs.microsoft.com/ja-jp/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa)
- [条件付きアクセス:レガシ認証をブロックする](https://docs.microsoft.com/ja-jp/azure/active-directory/conditional-access/howto-conditional-access-policy-block-legacy)
- [条件付きアクセス:すべてのユーザーに対して MFA を必須にする](https://docs.microsoft.com/ja-jp/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa)
