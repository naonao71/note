# 1. **AZ-500**

**リンク一覧およびメモ**

[AZ-500 ラボコンテンツ](https://microsoftlearning.github.io/AZ-500JA-AzureSecurityTechnologies/)

- ラボファイルをローカルにダウンロードする

[インストラクションシート](https://aka.ms/AAd306b)

- トレーニング情報が記載されている

[Skillpipe](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するテキスト

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

- トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
- メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するラボ環境

[トレーニング用サブスクリプションの取得](https://www.microsoftazurepass.com/)

- LODS を起動すると、Promo Code を入手できる

[AZ-500補足資料](https://github.com/naonao71/note/blob/main/AZ-500/AZ-500%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99v1.0.pdf)

- ローカルにダウンロードする

**コンテンツ**

- [1. **AZ-500**](#1-az-500)
  - [1.1. **モジュール01**](#11-モジュール01)
    - [1.1.1. Azure Active Diarectory](#111-azure-active-diarectory)
    - [1.1.2. ハイブリッド ID](#112-ハイブリッド-id)
    - [1.1.3. Azure AD Identity Protection](#113-azure-ad-identity-protection)
    - [1.1.4. Azure AD Pricileged Identity Management](#114-azure-ad-pricileged-identity-management)
    - [1.1.5. エンタープライズ ガバナンス](#115-エンタープライズ-ガバナンス)
  - [1.2. **モジュール02**](#12-モジュール02)
    - [1.2.1. 境界セキュリティ](#121-境界セキュリティ)
    - [1.2.2. ネットワークセキュリティ](#122-ネットワークセキュリティ)
    - [1.2.3. ホストセキュリティ](#123-ホストセキュリティ)
    - [1.2.4. コンテナーセキュリティ](#124-コンテナーセキュリティ)
  - [1.3. モジュール03](#13-モジュール03)
    - [1.3.1. Azure Key Vault](#131-azure-key-vault)
    - [1.3.2. アプリケーションのセキュリティ](#132-アプリケーションのセキュリティ)
    - [1.3.3. ストレージ セキュリティ](#133-ストレージ-セキュリティ)
    - [1.3.4. データベース セキュリティ](#134-データベース-セキュリティ)
  - [1.4. モジュール04](#14-モジュール04)
    - [1.4.1. Azure Monitor](#141-azure-monitor)
    - [1.4.2. Azure Security Center](#142-azure-security-center)
    - [1.4.3. Azure Sentinel](#143-azure-sentinel)

## 1.1. **モジュール01**

### 1.1.1. Azure Active Diarectory

[Azure AD の組み込みロール](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/permissions-reference)

- **グローバル管理者は5人未満に割り当てるのが推奨**
- 緊急アクセス用管理者アカウント（Break Glass アカウント）も含む

**特権管理者**：テナントの強い権限のこと
- グローバル管理者（全体管理者）
- Exchange サービス管理者
- SharePoint サービス管理者
- パスワード管理者/ヘルプデスク管理者
- ユーザーアカウント管理者
- その他

**特権アカウント保護のためにやるべきこと**
- 原則として普段使いアカウントと特権アカウントは分ける
- 特権アカウント数はできるだけ少なく
- 特権アカウントを共有しない
- 必要最小限の権限を付与
- 多要素認証を有効にする
- 使うときだけ有効化

**試験対策**

[Azure サブスクリプションの課金所有権を譲渡する](https://docs.microsoft.com/ja-jp/azure/cost-management-billing/manage/billing-subscription-transfer)

**グループの種類は2つある**
- **セキュリティ**
  - ユーザー、デバイス、グループ、およびサービス プリンシパルをメンバーとして設定でき、ユーザーとサービス プリンシパルを所有者として設定できます。

- **Microsoft365（メールアドレスあり）**
  - ユーザーのみをメンバーとして設定することができます。 ユーザーとサービス プリンシパルはどちらも、Microsoft 365 グループの所有者にすることができます。
   - メンバーシップの動的は反映するまでに若干のタイムラグがある
   - メンバーシップの種類がグレーアウトした場合、一旦グループの種類を変更して戻すと選択できるようになる

**所有者**は、そのグループの責任者的な意味合いを持つ

> グループやポリシーなどは、まず最初に名前付け規則を作成することを推奨。特に、グループなどの管理責任者と利用目的は明確化しておくと後々の管理運用が容易になります。

[名前付け規則を定義する](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)

[Azure Active Directory を使用して基本グループを作成してメンバーを追加する](https://docs.microsoft.com/ja-jp/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal?context=/azure/active-directory/enterprise-users/context/ugr-context)

[Azure AD サービスの制限と制約](https://docs.microsoft.com/ja-jp/azure/active-directory/enterprise-users/directory-service-limits-restrictions)

[Azure Active Directory の管理単位](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/administrative-units)

[Azure AD の組み込みロール](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/permissions-reference)


|属性名|表示上の名前|
|:----|:----|
|userPrincipalName|ユーザー名|
|DisplayName|名前|
|GivenName|名|
|surName|姓|
|userType|ユーザータイプ|
|ObjectID|オブジェクトID|
|dirsyncEnabled|ソース|
|jobTitle|役職|
|department|部署|
| |管理者*|
|BlockCredential|サインインのブロック*|
|UsageLocation|利用場所|
|StreetAddress|番地|
|State|都道府県|
|Country|国/リージョン|
|PhysicalDeliveryOfficeName|会社|
|City|市区町村|
|PostalCode|郵便番号|
|telephoneNumber|会社電話|
|Mobile|携帯電話|
| |年齢グループ*|
| |未成年および同意*|
| |ライセンス*|

[PowerShell Microsoft 365ユーザー アカウントのプロパティを構成する](https://docs.microsoft.com/ja-jp/microsoft-365/enterprise/configure-user-account-properties-with-microsoft-365-powershell?view=o365-worldwide)

```powershell
Get-AzureADUser -SearchString user01 | Set-AzureADUser -Department IT
Get-AzureADUser -SearchString user01 | fl *
```

**パスワードレス認証方法**
- Windows Hello for Business
- FIDO2 セキュリティ キー
- Microsoft Authenticator アプリ
- 一時アクセスパス 

[Azure Active Directory でパスワードレス認証のデプロイを計画する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-authentication-passwordless-deployment)

***
### 1.1.2. ハイブリッド ID

**Azure AD Connect**
-

[Azure AD Connect:アカウントとアクセス許可](https://docs.microsoft.com/ja-jp/azure/active-directory/hybrid/reference-connect-accounts-permissions)

Azure AD Connect では、オンプレミス (Windows Server Active Directory) から Azure Active Directory に情報を同期させるために 3 つのアカウントが使用されます。 それらのアカウントを次に示します。
- AD DS コネクタ アカウント
- ADSync サービス アカウント
- Azure AD コネクタ アカウント

Azure AD Connect を実行するためのこれら 3 つのアカウントに加え、Azure AD Connect をインストールするには、次のアカウントが別途必要となります。 次のとおりです。
- ローカル管理者アカウント
- **AD DS エンタープライズ管理者（Enterprise Admins）アカウント**
- **Azure AD 全体（グローバル）管理者アカウント**
- SQL SA アカウント (任意) 

[Azure Active Directory Connect クラウド同期の FAQ](https://docs.microsoft.com/ja-jp/azure/active-directory/cloud-sync/reference-cloud-sync-faq)

[Azure AD Connect とクラウド同期の比較](https://docs.microsoft.com/ja-jp/azure/active-directory/cloud-sync/what-is-cloud-sync)

[Azure AD Connect クラウド同期の前提条件](https://docs.microsoft.com/ja-jp/azure/active-directory/cloud-sync/how-to-prerequisites)

**認証オプション**
- パスワードハッシュ同期
- パススルー認証
- AD FS

[Securing Office 365 with better configuration](https://www.ncsc.gov.uk/blog-post/securing-office-365-with-better-configuration)

[チュートリアル:オンプレミス環境への Azure Active Directory のセルフサービス パスワード リセットのライトバックを有効にする](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/tutorial-enable-sspr-writeback)

[NIST SP800-207 「ゼロトラスト・アーキテクチャ」の解説と日本語訳](https://www.pwc.com/jp/ja/knowledge/column/awareness-cyber-security/zero-trust-architecture-jp.html)

***
### 1.1.3. Azure AD Identity Protection

[Azure AD Identity Protection のリスク](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/concept-identity-protection-risks)

**リスクの種類**
- ユーザー（リアルタイムとオフライン）
  - **漏洩されていないかを確認する。** 具体的には、MSが様々な情報を（ダークウェブなど）監視して合致するものがあるか？
- サインイン（リアルタイムとオフライン）
  - **本来のユーザーとは異なるユーザーからサインインしている可能性がある。** 匿名IPアドレスなど（上記リンク参照）を使用しているなどがある。

**認証の3要素**
- 知識情報（Something You Know）
- 所有情報（Something You Have)
- 生体情報（Something You Are）

[セキュリティの既定値群](https://docs.microsoft.com/ja-jp/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)

[Azure AD で緊急アクセス用管理者アカウントを管理する](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/security-emergency-access)

**条件付きアクセスポリシー(CA)**
-

**条件付きアクセスの動作**
- 動作はブラックリスト方式であるため、設計時に要考慮
  - <span style="color: red; ">明示的にポリシーを設定しない限り、アクセス許可</span>
  - CAポリシーで設定できるのは
    - アクセスのブロック
    - アクセス権の付与
- [割り当て] と [アクセス制御] の二つの要素でユーザー動作を制御
  - [割り当て]で「すべてのユーザー」、「すべてのクラウドアプリ」を対象にすると、管理者を締め出してしまう可能性あり（Azure AD Connect の同期用アカウントにも要注意）
  - 「すべてのユーザー」、「すべてのクラウドアプリ」 に対し、社外からのアクセスをブロックすると、Intune 登録、Graph などがブロックされてしまう
    - Microsoft Intune Enrollment クラウドアプリを除外してもダメ
- アクセスポリシーに順序はなく、すべてが評価される
    - CAポリシーに優先順位という概念はない
    - すべてのポリシーが評価され、割り当て条件に合致したサインインイベントに対し、制御がすべて適用される
    - <span style="color: red; ">許可よりもブロックが勝つ</span>
- [対象外] うまく使って割り当て条件を指定する
  - <span style="color: red; ">対象外が勝つ</span>（すべてのユーザーが対象でも対象外に設定したユーザーが勝つ）
- 問題があったら “サインインログ” を確認すると知りたいことはほぼすべてわかる
  - AADの監視＞サインイン（**条件付きアクセス項目**を参照する）

> **CAのポイント**
> - CAポリシーに優先順位という概念はない
> - すべてのポリシーが評価され、割り当て条件に合致したサインインイベントに対し、制御がすべて適用される
> - 許可よりもブロックが勝つ


- [割り当て] ベストプラクティス
  - すべてを対象にする際には細心の注意を
  - 対象を除外し、管理者は別ポリシーで保護
  - 除外には、ディレクトリ ロール を利用する
  - 不測の事態に備え、Break Glass アカウントを用意

- [アクセス制御] ベストプラクティス
  - ブロックの代わりに、「要 準拠デバイス」をお奨め
    - Intune 登録はブロックされない

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

**管理者に MFA 強制するとバッチが動かなくなる？**
- 管理者アカウントでバッチを動かすことは、セキュリティリスクが高いため、すぐにやめましょう

**ベストプラクティス(この順番で実装を検討)**
1. Managed Identity を利用する（モジュール3で説明）
2. サービスプリンシパル を利用した証明書認証を利用する
3. やむなくユーザーアカウントを利用する場合にも要保護対策

[Azure AD アクセス レビューとは](https://docs.microsoft.com/ja-jp/azure/active-directory/governance/access-reviews-overview)

***
### 1.1.4. Azure AD Pricileged Identity Management

**ゼロトラストの指導原則**
- 明示的に確認（常に認証と承認）
- 最低特権アクセス（JIT、JEA）、リスクベースの適応型ポリシー、データ保護によるユーザーアクセス制限
- 侵害の想定（ネットワークセグメンテーションによる横移動の防止）

**特権アカウント保護のためにやるべきこと**
- 原則として普段使いアカウントと特権アカウントは分ける
- 特権アカウント数はできるだけ少なく
- 特権アカウントを共有しない
- **必要最小限の権限を付与**
- **多要素認証を有効にする**
- **使うときだけ有効化**

**PIMの主な機能の確認**
- JIT（Just-In-Time）によって、作業時のみ権限を割り当てる。これは0.5～24時間まで
- リソースへの期限付きアクセス（権限を割り当てる際にあらかじめ有効期間を設定する）
- その権限を有効にするための承認プロセス
- 特権アカウントを使用する際に、MFAを確実に使用（全ユーザーがMFAを使用している場合＜すでにMFAにてログインしている＞は再度サインインする必要なし）
- そのアカウントのロールが必要な理由を明確化する。これによって、監査が容易になります。
- 特権アカウントが割り当てられた際の通知
- アクセスレビューによる、特権アカウントの割り当て把握
- 監査履歴をしようすることで、PIMイベントを継続的に追跡可能。外部監査にも利用できる。

[Azure AD Privileged Identity Management とは](https://docs.microsoft.com/ja-jp/azure/active-directory/privileged-identity-management/pim-configure)

**アクセスレビュー**

Identity Governanceは、「適切なユーザーに」 「適切なアクセス権を」 「適切な期間のみ」 を実現するもの。

- アクセスライフサイクル
  - エンタイトルメント管理（アクセス権の付与をプロセス化）
  - **アクセスレビュー（アクセス権のはく奪をプロセス化）**

**MFA の検証結果**

MFAを要求する設定は以下の通り
1. AAD>セキュリティ>MFA>追加のクラウドベースのMFA設定
1. AAD>セキュリティ>サインインリスクポリシー（ポリシーで多要素認証を要求する）
1. AAD>セキュリティ>条件付きアクセス（アクセス制御で多要素認証を要求する）

> サインインリスクポリシーでMFAを要求した場合、追加のクラウドベースのMFA設定で許可していない場合は **Block** される。
> 条件付きアクセスで多要素認証を要求する場合は、追加のクラウドベースのMFA設定で無効状態でもMFA認証を要求される（MFA設定画面に遷移する）。

***
### 1.1.5. エンタープライズ ガバナンス

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

[Azure カスタム ロール](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/custom-roles)

[Azure Blueprint とは](https://docs.microsoft.com/ja-jp/azure/governance/blueprints/overview)

[Azure サブスクリプションの課金所有権の譲渡の概要](https://docs.microsoft.com/ja-jp/azure/cost-management-billing/understand/subscription-transfer)

***
## 1.2. **モジュール02**

**HubSpok 環境の作成**
```powershell
New-AzResourceGroup -Name hub-spoke -Location eastus
New-AzResourceGroupDeployment -ResourceGroupName hub-spoke -TemplateUri https://raw.githubusercontent.com/mspnp/samples/master/solutions/azure-hub-spoke/azuredeploy.json
```

**HubSpok 環境の削除**

```powershell
Remove-AzResourceGroup -Name hub-spoke
```

![image](https://github.com/naonao71/note/blob/main/AZ-500/media/hub-spoke.jpg)

***
### 1.2.1. 境界セキュリティ

[Local Administrator Password Solution (LAPS) 導入ガイド (日本語版)](https://msrc-blog.microsoft.com/2020/08/26/20200827_laps/)

[Azure DDoS Protection Standard の概要](https://docs.microsoft.com/ja-jp/azure/ddos-protection/ddos-protection-overview)

DDoS Protection Standard では、次の種類の攻撃を軽減できます。

- **ボリューム攻撃**
  - 攻撃の目的は、一見、正当な大量のトラフィックでネットワーク層を溢れさせることです。これには、UDP フラッド、増幅フラッド、およびその他の偽装されたパケットのフラッドが含まれます。DDoS Protection Standard は、Azure のグローバル ネットワーク スケールを自動的に使用し、この潜在的に数ギガバイトに及ぶ攻撃を吸収して除去し、これらの攻撃を軽減します。
- **プロトコル攻撃**
  - これらの攻撃は、レイヤー 3 およびレイヤー 4 のプロトコル スタックの弱点を悪用して、ターゲットにアクセスできないようにします。これには、SYN フラッド攻撃、リフレクション攻撃、およびその他のプロトコル攻撃が含まれます。DDoS Protection Standard は、クライアント側と対話して悪意のあるトラフィックと正当なトラフィックを区別し、悪意のあるトラフィックをブロックしてこれらの攻撃を軽減します。
- **リソース (アプリケーション) レイヤの攻撃**
  - これらの攻撃は、ホスト間のデータ送信を妨害する Web アプリケーション パケットをターゲットとしています。これらの攻撃には、HTTP プロトコル違反、SQL インジェクション、クロスサイト スクリプティング、およびその他のレイヤー 7 の攻撃が含まれます。これらの攻撃に対する防御策として、Azure Application Gateway Web アプリケーション ファイアウォールなどの Web アプリケーション ファイアウォールと DDoS Protection Standard を使用します。Azure Marketplace には、サードパーティ製の Web アプリケーション ファイアウォール製品もあります。

**Azure Firewall**

主な機能：

- **組み込みの高可用性**
  - 高可用性が組み込まれているため、追加のロード バランサーは必要なく、構成すべきものもありません。
- **無制限のクラウド スケーラビリティ**
  - Azure Firewall では、必要に応じてスケールアップしてネットワーク トラフィック フローの変化に対応できるので、ピーク時のトラフィックを処理するために予算を立てる必要がありません。
- **アプリケーション FQDN フィルタリング ルール**
  - ワイルド カードも含まれる FQDN の指定された一覧に、送信 HTTP/S トラフィックを制限できます。この機能に SSL 終了は必要ありません。
- **ネットワーク トラフィック フィルタリング ルール**
  - 送信元と宛先の IP アドレス、ポート、プロトコルを基準として、“許可” または "拒否" のネットワーク フィルタリング規則を一元的に作成できます。Azure Firewall は完全にステートフルであるため、各種の接続の正当なパケットを識別できます。規則は、複数のサブスクリプションと仮想ネットワークにまたがって適用および記録されます。
- **FQDN タグ**
  - 完全修飾ドメイン名(FQDN) のタグにより、ファイアウォール経由の既知の Azure サービスのネットワーク トラフィックを簡単に許可することができます。たとえば、ファイアウォール経由の Windows Update のネットワーク トラフィックを許可したいとします。アプリケーションの規則を作成して、Windows Update のタグを組み込みます。これで、Windows Update からのネットワーク トラフィックをファイアウォール経由でフローできるようになります。
- **発信ソース ネットワーク アドレス変換（OSNAT）のサポート**
  - 仮想ネットワーク トラフィックの送信 IP アドレスはすべて Azure Firewall パブリック IP に変換されます。仮想ネットワークからインターネット上のリモートの送信先に向かうトラフィックを特定して許可できます。
- **インバウンド宛先ネットワーク アドレス変換（DNAT）サポート**
  - ファイアウォールのパブリック IP アドレスへの着信ネットワーク トラフィックは、変換され、仮想ネットワークのプライベート IP アドレスでフィルター処理されます。
- **Azure Monitor のログ**
  - すべてのイベントは Azure Monitor と統合されます。そのため、ログをストレージ アカウントにアーカイブしたり、イベントを Event Hub にストリーム配信したり、それらを Azure Monitor ログに送信したりできます。

***
### 1.2.2. ネットワークセキュリティ

[仮想ネットワーク サービス エンドポイント](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-service-endpoints-overview)

[Azure Storage の仮想ネットワーク サービス エンドポイント ポリシー](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-service-endpoint-policies-overview)

[プライベート リンク リソース](https://docs.microsoft.com/ja-jp/azure/private-link/private-endpoint-overview#private-link-resource)

[Azure Private Link のよく寄せられる質問 (FAQ)](https://docs.microsoft.com/ja-jp/azure/private-link/private-link-faq#what-is-the-relationship-between-private-link-service-and-private-endpoint)

[Load Balancer と Application Gateway の通信の違い](https://docs.microsoft.com/ja-jp/archive/blogs/jpaztech/lb_appgw_traffic_different)

[Azure Application Gateway のセッション アフィニティに関する問題をトラブルシューティングする](https://docs.microsoft.com/ja-jp/azure/application-gateway/how-to-troubleshoot-application-gateway-session-affinity-issues)

[Azure Front Door とは](https://docs.microsoft.com/ja-jp/azure/frontdoor/front-door-overview)

[ExpressRoute Direct について](https://docs.microsoft.com/ja-jp/azure/expressroute/expressroute-erdirect-about#workflow)

***
### 1.2.3. ホストセキュリティ

[Windows Autopilot の概要](https://docs.microsoft.com/ja-jp/mem/autopilot/windows-autopilot)

[特権アクセス: 戦略](https://docs.microsoft.com/ja-jp/security/compass/privileged-access-strategy)

[特権アクセスの一部としてデバイスをセキュリティで保護する](https://docs.microsoft.com/ja-jp/security/compass/privileged-access-devices)

[PAW（Privileged Access Workstation）の実装](https://docs.microsoft.com/ja-jp/security/compass/privileged-access-deployment)

[Azure VM での VM ゲストの自動パッチ適用](https://docs.microsoft.com/ja-jp/azure/virtual-machines/automatic-vm-guest-patching)

[Linux VM に対する Azure Disk Encryption](https://docs.microsoft.com/ja-jp/azure/virtual-machines/linux/disk-encryption-overview)

[Windows VM 用の Azure Disk Encryption](https://docs.microsoft.com/ja-jp/azure/virtual-machines/windows/disk-encryption-overview)

[Windows VM で Azure Disk Encryption のキー コンテナーを作成して構成する](https://docs.microsoft.com/ja-jp/azure/virtual-machines/windows/disk-encryption-key-vault)

[Microsoft Defender for Endpoint](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-wdatp?tabs=windows)

[エンドポイントセキュリティ：Microsoft Defender for Endpoint](https://www.microsoft.com/ja-jp/security/business/threat-protection/endpoint-defender)

[Introducing Microsoft Defender for Endpoint Plan 1](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-microsoft-defender-for-endpoint-plan-1/ba-p/2636641)

[Microsoft Defender for Endpoint Plan 1 の概要](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/defender-endpoint-plan-1?view=o365-worldwide)

***
### 1.2.4. コンテナーセキュリティ

[脅威分析モデル～STRIDE～](https://hanakutoman.com/threat-modeling-stride/)

[Azure Defender for container registries の概要](https://docs.microsoft.com/ja-jp/azure/security-center/defender-for-container-registries-introduction)

[Azure Security Center (無料) と有効化された Azure Defender](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-pricing)

[Azure Container Registry におけるコンテンツの信頼](https://docs.microsoft.com/ja-jp/azure/container-registry/container-registry-content-trust)

[Azure Container Registry のロールとアクセス許可](https://docs.microsoft.com/ja-jp/azure/container-registry/container-registry-roles?tabs=azure-cli)

***
## 1.3. モジュール03

### 1.3.1. Azure Key Vault

[保存データに対する Azure Storage 暗号化](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-service-encryption)

[Azure Key Vault のバックアップ](https://docs.microsoft.com/ja-jp/azure/key-vault/general/backup?tabs=azure-cli)

***
### 1.3.2. アプリケーションのセキュリティ

[Microsoft ID プラットフォームとは](https://docs.microsoft.com/ja-jp/azure/active-directory/develop/v2-overview)

[Microsoft ID プラットフォームにアプリケーションを登録する](https://docs.microsoft.com/ja-jp/azure/active-directory/develop/quickstart-register-app)

[Azure Active Directory における管理タスク別の管理者ロール](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/delegate-by-task)

[Graph Explorer - Microsoft Graph](https://developer.microsoft.com/en-us/graph/graph-explorer)

[Microsoft ID プラットフォームでのアクセス許可と同意](https://docs.microsoft.com/ja-jp/azure/active-directory/develop/v2-permissions-and-consent#permission-types)

[Azure リソースのマネージド ID と Azure 仮想マシンの連携](https://docs.microsoft.com/ja-jp/azure/active-directory/managed-identities-azure-resources/how-managed-identities-work-vm)

[JSON Web Tokens - jwt.io](https://jwt.io/)

[Azure App Service に対する TLS 相互認証の構成](https://docs.microsoft.com/ja-jp/azure/app-service/app-service-web-configure-tls-mutual-auth)

***
### 1.3.3. ストレージ セキュリティ

[SAS を使用する際のベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-sas-overview#best-practices-when-using-sas)

[Azure Active Directory を使用して BLOB へのアクセスを認可する](https://docs.microsoft.com/ja-jp/azure/storage/blobs/authorize-access-azure-active-directory)

***
### 1.3.4. データベース セキュリティ

[Azure SQL Database と SQL Managed Instance のセキュリティ機能の概要](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/security-overview)

[SQL Server Management Studio (SSMS) のダウンロード](https://docs.microsoft.com/ja-jp/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)

[データベースレベルのファイアウォール規則](https://docs.microsoft.com/ja-jp/sql/relational-databases/system-stored-procedures/sp-set-database-firewall-rule-azure-sql-database?view=azuresqldb-current)

[ポータルを使用して仮想ネットワーク規則を作成する](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/vnet-service-endpoint-rule-overview#anchor-how-to-by-using-firewall-portal-59j)

[Azure SQL Database と Azure Synapse Analytics の接続アーキテクチャ](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/connectivity-architecture)

[SQL Server 監査のアクション グループとアクション](https://docs.microsoft.com/ja-jp/sql/relational-databases/security/auditing/sql-server-audit-action-groups-and-actions?view=sql-server-ver15)

[Azure SQL Database および Azure Synapse Analytics の監査](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/auditing-overview)

[動的データ マスク](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/dynamic-data-masking-overview)

[SQL Database、SQL Managed Instance および Azure Synapse Analytics の透過的なデータ暗号化](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/transparent-data-encryption-tde-overview?tabs=azure-portal)

[Transparent data encryption or always encrypted?](https://azure.microsoft.com/en-in/blog/transparent-data-encryption-or-always-encrypted/)

| |Always Encrypted |TDE|
|:----|:----|:----|
|保管データを保護|〇|〇|
|使用中のデータを保護|〇|×|
|SQL 管理者および管理者からデータを保護|〇|×|
|データはクライアント側で暗号化/復号される|〇|×|
|データはサーバー側で暗号化/復号される|×|〇|
|列レベルで暗号化|〇|×（データベース全体を暗号化）|
|アプリケーションに対して透過的|△（部分的）|〇|
|暗号化オプション|〇|×|
|暗号化キー管理|カスタマーマネージドキー|サービスまたはカスタマーマネージドキー|
|使用中のキー保護|〇|×|
|ドライバが必要|〇|×|

[Azure Key Vault を使用した Always Encrypted の構成](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/always-encrypted-azure-key-vault-configure?tabs=azure-powershell)

**CEKの種類**
- 決定論的（Deterministic）＜テキストでは確定的暗号化＞
  - 任意のプレーンテキスト値に対して常に同じ暗号化された値を生成します。確定的暗号化を使用すると、ポイントルックアップ、等価結合、暗号化された列のグループ化およびインデックス付けが可能になります。
- ランダム化（Randomized）
  - 予測不可能な方法でデータを暗号化する方法を使用します。

[Always Encrypted のキー管理の概要](https://docs.microsoft.com/ja-jp/sql/relational-databases/security/encryption/overview-of-key-management-for-always-encrypted?view=sql-server-ver15)

**ラボ情報**
- PDT update suggestionsフォルダに入っている「az-500-10_azuredeploy.json」ファイルを使用する。

***
## 1.4. モジュール04

### 1.4.1. Azure Monitor

[Kusto の概要](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/concepts/)

[Log Analytics Demo Site](https://aka.ms/lademo)

***
### 1.4.2. Azure Security Center

[MITRE ATT&CK](https://www.intellilink.co.jp/article/column/attack-mitre-sec01.html)

[Azure Security Center (無料) と有効化された Azure Defender](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-pricing)

[Azure security benchmark introduction](https://docs.microsoft.com/ja-jp/security/benchmark/azure/introduction)

[セキュリティの推奨事項 - リファレンス ガイド](https://docs.microsoft.com/ja-jp/azure/security-center/recommendations-reference)

[Azure Security Center 内のセキュリティ スコア](https://docs.microsoft.com/ja-jp/azure/security-center/secure-score-security-controls)

[Azure およびハイブリッドのマシンに対する Azure Defender の統合された脆弱性評価](https://docs.microsoft.com/ja-jp/azure/security-center/deploy-vulnerability-assessment-vm)

[適応型アプリケーション制御を使用して、マシンの攻撃対象領域を減らす](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-adaptive-application)

[Security Center の適応型アプリケーション制御とは](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-adaptive-application#what-are-security-centers-adaptive-application-controls)

[アダプティブ ネットワークのセキュリティ強化により、ネットワークのセキュリティ体制を向上させる](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-adaptive-network-hardening)

[SQL 脆弱性評価](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/sql-vulnerability-assessment)

[Azure Security Center のファイルの整合性の監視](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-file-integrity-monitoring)

***
### 1.4.3. Azure Sentinel

[Azure Sentinel のドキュメント](https://docs.microsoft.com/ja-jp/azure/sentinel/)

[Azure Sentinel データ コネクタ](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-data-sources)

[Find your Azure Sentinel data connector](https://docs.microsoft.com/en-us/azure/sentinel/data-connectors-reference)

