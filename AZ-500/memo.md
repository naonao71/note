# **AZ-500 Microsoft Azure セキュリティ テクノロジ**

最終更新日 2025/07/03</BR>

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

SC-100のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境で提供されました。
> - このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。


**リンク一覧およびメモ**

[AZ-500 ラボコンテンツ](https://github.com/MicrosoftLearning/AZ500-AzureSecurityTechnologies.ja-jp/tree/main/Instructions/Labs)

[AZ-500のテキスト](https://learn.microsoft.com/ja-jp/training/courses/az-500t00)

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

***
**コンテンツ**

- 1 [AZ-500:ID とアクセスを管理する](https://learn.microsoft.com/ja-jp/training/paths/manage-identity-access-new/)
  - 1.1 [Microsoft Entra ID で ID を管理する](https://learn.microsoft.com/ja-jp/training/modules/manage-identities-microsoft-entra-id/)
  - 1.2 [Microsoft Entra ID を使用して認証を管理する](https://learn.microsoft.com/ja-jp/training/modules/manage-authentication-microsoft-entra-id/)
  - 1.3 [Microsoft Entra ID を使用して認可を管理する](https://learn.microsoft.com/ja-jp/training/modules/manage-authorization-microsoft-entra-id/)
  - 1.4 [Microsoft Entra ID でアプリケーション アクセスを管理する](https://learn.microsoft.com/ja-jp/training/modules/manage-application-access-microsoft-entra-id/)
- 2 [セキュアなネットワーキング](https://learn.microsoft.com/ja-jp/training/paths/secure-networking/)
  - 2.1 [仮想ネットワークのセキュリティを計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/security-virtual-networks/)
  - 2.2 [Azure リソースへのプライベート アクセスのセキュリティを計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/security-private-access-azure-resources/)
  - 2.3 [Azure リソースへのパブリック アクセスのセキュリティを計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/security-public-access-azure-resources/)
- 3 [コンピューティング、ストレージ、データベースをセキュリティで保護する](https://learn.microsoft.com/ja-jp/training/paths/secure-compute-storage-databases/)
  - 3.1 [コンピューティングの高度なセキュリティを計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/advanced-security-compute/)
  - 3.2 [ストレージのセキュリティを計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/security-storage/)
  - 3.3 [Azure SQL Database と Azure SQL Managed Instance のセキュリティを計画して実装する](https://learn.microsoft.com/ja-jp/training/modules/security-azure-sql-database-azure-sql-managed-instance/)
- 4 [セキュリティ オペレーションを管理する](https://learn.microsoft.com/ja-jp/training/paths/manage-security-operations-new/)
  - 4.1 [セキュリティのガバナンスを計画、実装、管理する](https://learn.microsoft.com/ja-jp/training/modules/governance-security/)
  - 4.2 [Microsoft Defender for Cloud を使用してセキュリティ態勢を管理する](https://learn.microsoft.com/ja-jp/training/modules/microsoft-defender-cloud-security-posture/)
  - 4.3 [Microsoft Defender for Cloud を使用して脅威に対する保護を構成して管理する](https://learn.microsoft.com/ja-jp/training/modules/microsoft-defender-cloud-threat-protection/)
  - 4.4 [セキュリティ監視とオートメーション ソリューションを構成して管理する](https://learn.microsoft.com/ja-jp/training/modules/security-monitoring-automation-solutions/)

***
**Lab(講師所感)**
すべてのLab環境で注意事項が記載されています。注意事項にはLab環境独自の手順（例えば、すでに作成されているユーザーなど）が記載されていることがあります。
お勧めのラボは（★★★）で印をつけています。

| |Day1|Day2|Day3|Day4|
|:----|:----|:----|:----|:----|
|Lab No|1| 2,3|4,6,7|8,9|


- **1-ロール ベースのアクセス制御**（★☆☆）</BR>
この演習では、ポータル、CloudShellのPowerShellとBashを使用してユーザーやグループを作成し権限割り当てを確認します。共通のテナントを使用しているため多くのオブジェクトがありコマンドを実行した際返答までに時間がかかります。この演習ではGitHubからファイルのダウンロードは必要ありません。

  - 演習1のタスク2で所有者とメンバーにJoseph-XXX (手順書のグループ名に記載されている番号) を選択します。
  - 演習4のタスク2で検索には、Virtual Machine Contributor ではなく日本語で **仮想マシン共同作成者** を入力します。
  - 演習4のタスク2でメンバーの選択で、Service DeskXXX (手順書のグループ名に記載されている番号) を選択します。
  - 演習4のタスク2のステップ6のロール割り当ては英語（Role Assignments）で表示されています。

- **2-ネットワーク セキュリティ グループとアプリケーション セキュリティ グループ**（★★☆）</BR>
この演習では、仮想ネットワークとNSG、ASGを作成します。また仮想マシンを作成します。それぞれの仮想マシンに関連付けされたNSGの動作を確認します。

  - 仮想マシンの作成時に **管理** タブではなく、**監視** タブの **ブート診断** を確認します。

- **3-Azure Firewall**（★★★）</BR>
カスタムテンプレートを使用して仮想マシンをデプロイします。Firewall をデプロイして UDR を作成し、ルーティングテーブルを書き換えます。LODS環境→FW→Srv-jump→Srv-workへの接続を確認します。Srv-jumpからブラウザーを使用してインターネット接続を確認します。

  - ファイアウォールを作成時に **Enable Firewall Management NIC** のチェックを **オフ** にします。
  - ファイアウォールのアプリケーションコレクションのプロトコルポート入力時に「**http:80,https:443**」と入力します。コピーするとカンマが抜けているので注意します。

- **4-ACR と AKS の構成とセキュリティ保護**（★☆☆）</BR>
Bashコマンドを使用して、ACRを作成します。その後、AKSクラスターを作成しACRと接続します。外部ホストおよび内部ホストへの接続を確認します。

  - サブスクリプションのリソースプロバイダに「Microsoft.ContainerRegistry」の登録がされていない場合は、登録してください。
  - サブスクリプションの制限により、タスク3で実行するAKSを作成するコマンドのVMサイズを「--node-vm-sizeをStandard_D2S_V3」に変更してください。
  - 注意事項がありますので、必ず確認してください。（AKS作成はコマンドで行い手順をスキップするなどが記載されています）

- **5-ディレクトリ同期の導入**（☆☆☆）</BR>
こちらの演習は現在提供されていません。

- **6-Azure SQL データベースのセキュリティ保護**（★☆☆）</BR>
カスタムテンプレートを使用して環境をデプロイします。SQLデータベースで Defender for Cloud の有効化と監査の設定を行います。

  - SQLサーバーを表示するには、概要からサーバー名のリンクをクリックします。
  - タスク2の Microsoft Defender for Cloud を有効化してから反映されるまで数分かかります。その後、有効化の状態が更新されます。 

- **7-サービス エンドポイントとストレージの保護**（★★☆）</BR>
PrivateおよびPublicのNSGを作成して、ルールを作成します。ストレージアカウントを作成して、サービスエンドポイントを作成しPrivateネットワークに関連付けます。そして、VMを作成してNSGルールによるトラフィック制御の確認を行います。

- **8-キー コンテナー (Always Encrypted を設定して、セキュアなデータを実装する)**（★★☆）</BR>
カスタムテンプレートを使用してLab環境をデプロイします。Key Vaultを作成してキーおよびシークレットを作成します。アプリケーションの登録をし、クライアントシークレットを作成します。VMからSSMSを起動し、データベースにAlways Encryptedを設定します。 Visual Studioを使用してアプリケーションを作成し、アプリケーションから暗号化したデータを復号して表示します。(初見では1時間以上かかり難易度高めです)

  - Key Vaultのアクセスポリシーでは、ポリシーのローテーション操作セクションはチェックを外してください。

![image](https://github.com/naonao71/note/blob/main/AZ-500/media/sql.jpg)


- **9-Azure Monitor, Microsoft Defender for Cloud, Microsoft Sentinel**（★★★）</BR>
VM、Log Analyticsワークスペース、ストレージアカウントを作成します。DCRを作成しAMAをVMにインストールします。Sentinelをデプロイして動作を確認します。Sentinelの動作確認には時間がかかる場合があります。

  - Microsoft Defender for Cloud を有効にして反映されるまでに時間がかかる場合があります。
  - Microsoft Defender for Cloud で Just-In-Time VMアクセスを設定する際に、「構成されていません」タブに表示されるまで時間がかかる場合があります。今回はRDPの構成を行うので、ワークアラウンドとして仮想マシンの接続から「Just-In-Timeポリシーの**構成**」を選択します。その後、MDCのJust-In-Time VMアクセスを参照します。
  - SentinelのAzure アクティビティのデータコネクタを接続しますが、Azure ポリシーによる構成なので反映するまで30分程度かかる場合があります。
  - Sentinelの分析ルールの「不審なリソースの作成またはデプロイの数」は「Suspicious number of resource creation or deployment activities」です。
  - 分析ルールからオートメーションルールを新規作成できない場合は、オートメーションメニューから作成します。その際、トリガーは「When alert is created」を選択し、分析ルール名は「プレイブックデモ」、アクションを「Run playbook」を選択して、先に作成した「Change-Incident-Severity」を選択します。
  - 1回目のインシデントではオートメーションルールが実行されない場合がありますが、2回目以降はオートメーションルールが実行され重大度が「高」に変更されます。
  - 環境によってはMicrosoft Defender for Cloudのセキュリティ態勢が表示されない場合があります。（Lab環境のみ）

<!--
- [1. **AZ-500 Microsoft Azure セキュリティ テクノロジ**](#1-az-500-microsoft-azure-セキュリティ-テクノロジ)
  - [1.1. モジュール01](#11-モジュール01)
    - [1.1.1. Azure Active Directory](#111-azure-active-directory)
    - [1.1.2. ハイブリッド ID](#112-ハイブリッド-id)
  - [**Azure AD Connect**](#azure-ad-connect)
    - [1.1.3. Azure AD Identity Protection](#113-azure-ad-identity-protection)
  - [**条件付きアクセスポリシー(CA)**](#条件付きアクセスポリシーca)
    - [1.1.4. Azure AD Pricileged Identity Management](#114-azure-ad-pricileged-identity-management)
    - [1.1.5. エンタープライズ ガバナンス](#115-エンタープライズ-ガバナンス)
  - [1.2. モジュール02](#12-モジュール02)
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
    - [1.4.3. Microsoft Sentinel](#143-microsoft-sentinel)

## 1.1. モジュール01

### 1.1.1. [Azure Active Directory](https://docs.microsoft.com/ja-jp/learn/modules/azure-active-directory/?wt.mc_id=esi_m2l_content_wwl)

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
### 1.1.2. [ハイブリッド ID](https://docs.microsoft.com/ja-jp/learn/modules/hybrid-identity/?wt.mc_id=esi_m2l_content_wwl)

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

[Azure AD Connect の通信要件](https://docs.microsoft.com/ja-jp/azure/active-directory/hybrid/reference-connect-ports)

**認証オプション**
- パスワードハッシュ同期
- パススルー認証
- AD FS

[Securing Office 365 with better configuration](https://www.ncsc.gov.uk/blog-post/securing-office-365-with-better-configuration)

[チュートリアル:オンプレミス環境への Azure Active Directory のセルフサービス パスワード リセットのライトバックを有効にする](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/tutorial-enable-sspr-writeback)

[NIST SP800-207 「ゼロトラスト・アーキテクチャ」の解説と日本語訳](https://www.pwc.com/jp/ja/knowledge/column/awareness-cyber-security/zero-trust-architecture-jp.html)

***
### 1.1.3. [Azure AD Identity Protection](https://docs.microsoft.com/ja-jp/learn/modules/azure-ad-identity-protection/?wt.mc_id=esi_m2l_content_wwl)

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
### 1.1.4. [Azure AD Pricileged Identity Management](https://docs.microsoft.com/ja-jp/learn/modules/azure-ad-privileged-identity-management/?wt.mc_id=esi_m2l_content_wwl)

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
1. AAD>セキュリティ>MFA>追加のクラウドベースのMFA設定（各ユーザーに対して多要素認証を要求する）
1. AAD>セキュリティ>サインインリスクポリシー（ポリシーで多要素認証を要求する）
1. AAD>セキュリティ>条件付きアクセス（アクセス制御で多要素認証を要求する）

> - サインインリスクポリシーでMFAを要求した場合、追加のクラウドベースのMFA設定で許可していない場合は **Block** される。
> - 条件付きアクセスで多要素認証を要求する場合は、追加のクラウドベースのMFA設定で無効状態でもMFA認証を要求される（MFA設定画面に遷移する）。

***
### 1.1.5. [エンタープライズ ガバナンス](https://docs.microsoft.com/ja-jp/learn/modules/enterprise-governance/?wt.mc_id=esi_m2l_content_wwl)

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
Azure RBAC Role の確認例
```powershell
Get-AzRoleDefinition 'Owner'
Get-AzRoleDefinition 'contributor'
Get-AzRoleDefinition 'user access administrator'
```

[Azure カスタム ロール](https://docs.microsoft.com/ja-jp/azure/role-based-access-control/custom-roles)

[Azure Blueprint とは](https://docs.microsoft.com/ja-jp/azure/governance/blueprints/overview)

[Azure サブスクリプションの課金所有権の譲渡の概要](https://docs.microsoft.com/ja-jp/azure/cost-management-billing/understand/subscription-transfer)

***
## 1.2. モジュール02

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
### 1.2.1. [境界セキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/perimeter-security/?wt.mc_id=esi_m2l_content_wwl)

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
### 1.2.2. [ネットワークセキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/network-security/?wt.mc_id=esi_m2l_content_wwl)

[仮想ネットワーク サービス エンドポイント](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-service-endpoints-overview)

[Azure Storage の仮想ネットワーク サービス エンドポイント ポリシー](https://docs.microsoft.com/ja-jp/azure/virtual-network/virtual-network-service-endpoint-policies-overview)

[プライベート リンク リソース](https://docs.microsoft.com/ja-jp/azure/private-link/private-endpoint-overview#private-link-resource)

[Azure Private Link のよく寄せられる質問 (FAQ)](https://docs.microsoft.com/ja-jp/azure/private-link/private-link-faq#what-is-the-relationship-between-private-link-service-and-private-endpoint)

[Load Balancer と Application Gateway の通信の違い](https://docs.microsoft.com/ja-jp/archive/blogs/jpaztech/lb_appgw_traffic_different)

[Azure Application Gateway のセッション アフィニティに関する問題をトラブルシューティングする](https://docs.microsoft.com/ja-jp/azure/application-gateway/how-to-troubleshoot-application-gateway-session-affinity-issues)

[Azure Front Door とは](https://docs.microsoft.com/ja-jp/azure/frontdoor/front-door-overview)

[ExpressRoute Direct について](https://docs.microsoft.com/ja-jp/azure/expressroute/expressroute-erdirect-about#workflow)

***
### 1.2.3. [ホストセキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/host-security/?wt.mc_id=esi_m2l_content_wwl)

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

**OS の種類ごとのアンチマルウェアと EDR のオプションに関して**

| |Linux|Windows Server 2022/2019|Windows Server 2016|Windows Server 2012 R2|Windows Server 2012|Windows Server 2008 R2|
|:----|:----|:----|:----|:----|:----|:----|
|AVモジュール|MDEモジュール|Microsoft Defender AV|Microsoft Defender AV|Microsoft Antimalware|Microsoft Antimalware|Microsoft Antimalware|
|AV提供方法|Microsoft Defender for Cloud で利用可能|OS 組み込みのため無料で利用可能|OS 組み込みのため無料で利用可能|Azure 上の無料サービス|Azure 上の無料サービス|Azure 上の無料サービス|
|EDRサーバー|MDE|MDE|MDE|MDE|非対応|MDE|
|EDRエージェント|MDEモジュール|OS組み込みのMDEセンサー|MDEモジュール|MDEモジュール|非対応|MMA|
|EDR連携|Microsoft Defender for Cloud で利用可能|Microsoft Defender for Cloud で利用可能|Microsoft Defender for Cloud で利用可能|Microsoft Defender for Cloud で利用可能|非対応|Microsoft Defender for Cloud で利用可能|


製品としては以下が登場する。
- Microsoft Defender for Cloud (Defender for Cloud)
- Microsoft Monitoring Agent (MMA) "旧 Log Analytics エージェント"
- Microsoft Defender for Endpoint (MDE)
- Microsoft Defender AV
- Microsoft Antimalware

**マルウェアに関して**

**Linux**</BR>
Linux のアンチマルウェアは、MDE の中で EDR と合わせて提供されます。Defender for Cloud から MDE を自動オンボードする場合、AV 部分は最初無効化されています。そのため、[構成プロファイル](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/linux-preferences?view=o365-worldwide#recommended-configuration-profile)を変更するなどして有効化をしておく必要があります。

**Windows Server 2016 / 2019 / 2022**</BR>
Windows Server 2016 以降は、OS 組み込みの Microsoft Defender AV を利用することができます。アラートの管理には、MDE や Defender for Cloud を利用します。

そのため基本的には Azure の拡張機能である Microsoft Antimalware を利用する必要はありませんが、スキャンのタイミングの設定などを Azure Portal から行いたい場合などは、Microsoft Antimalware 拡張機能を有効化することもできます。

**Windows Server 2012 / 2012 R2**</BR>
- EDRはMDEで導入（AzureだとDefender for Servers P1/P2で自動展開する）
- EPPもMDEの展開モジュールに含まれて自動デプロイされる
  - サービスは「Microsoft Defender ウイルス対策サービス」として起動する
  - Win2012環境にAzureの"Extention AntiMalware"を入れても、SCEPは導入されないように変更されている
- Win2012環境で、Windows Defenderの管理を行う場合は、コマンドライン or GPOになる
  - コマンドラインの場合は、「get-mppreference / set-mpprerference」等を利用する
  - Windows Defender 導入時に、グループポリシー管理テンプレートも配布されているため、gpedit 経由でローカルグループポリシーを使うことも可能になっている

> - Windows 2012/R2 Server / ～2022/4以前の仕様
>   - EDRはMDEで導入（AzureだとDefender for Servers P1/P2で自動展開する）
>   - EPPは別途DL（SCEPのDL先は現在非公開になっているため、要サポート確認だった。Azure VMの場合は、"Extention AntiMalware"拡張を導入することで、SCEPが導入される仕様だった）

現時点(2022/05/31)でこの動きは通常のMDEライセンスからの導入、および Defender for Servers P1ライセンスの動きであり、Defender for Servers P2だけは動きが異なる（旧来のSCEP導入）になる仕様のため、ご注意ください。
（MDfC Defender for Servers P2だけは自動オンボーディングが古くMMA->MDEの中で旧来の方式から変えられていないそうです）

**Windows Server 2008 R2**</BR>
Windows Server 2008 以前は、Microsoft Defender AV は利用できません。しかし、Azure 上の仮想マシンであれば、Microsoft Defender AV 相当のアンチマルウェア機能を、仮想マシン拡張機能として利用することができます。これが、Microsoft Antimalware です。無料ですぐに利用を開始でき、拡張機能として構成をしていくことも可能です。また、Microsoft Defender AV と同じく、アラートの管理には、MDE や Defender for Cloud を利用します。

**EDRに関して**

**Linux**</BR>
Linux は AV と同じ MDE のモジュールの中で EDR 機能が含まれています。

**Windows Server 2019 / 2022**</BR>
OS組み込みのセンサーが使われます。Defender for Cloud からの自動オンボードの場合、このセンサーの有効化が自動的に行われます。

**Windows Server 2012 R2 と 2016**</BR>
Windows Server 2012 R2 と 2016 向けの[新しいモジュール](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/defending-windows-server-2012-r2-and-2016/ba-p/2783292) が提供されました。これにより、古いバージョンの Windows Server についてもより高度な保護を利用できるようになっていきます。この新しいモジュールのインストールなども今後 Defender for Cloud 側にも組み込まれていく予定です。

**Windows Server 2008 R2**</BR>
Microsoft Monitoring Agent (MMA)がセンサーの役割を果たします。そのため機能が限定されており、自動調査と対処などが利用できません。

**Windows Server 2012**</BR>
MDE非対応

***
### 1.2.4. [コンテナーセキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/enable-containers-security/?wt.mc_id=esi_m2l_content_wwl)

**コンテナーを使用するにあたってのセキュリティ考慮事項**
- パブリックに公開されているコンテナーイメージはセキュリティを保証しない。よって、**プライベートレジストリを使用することでセキュリティを高める**
- Dockerイメージをアップロード（プッシュ）して、リポジトリに保管するが、その際に**継続的に監視およびスキャンをする**
  - プライベートレジストリである**ACR（Azure Container Registry）を使用すれば上記要件を満たす**
- **最小特権の原則をコンテナーにも適用する**。これによってリスク軽減になる。
- **コンテナーランタイムから未使用および不要なプロセスや特権を削除する**。これによって、攻撃面（アタックサーフェス）を最小限に抑える
- **ネットワークセグメンテーションを行う**ことで、侵害時の横移動を防止する
- Kubernetes クラスター、コンテナー レジストリ、コンテナー イメージなど、コンテナー エコシステムへの**管理アクセスの正確な監査証跡を維持します**。これらのログは、監査の目的で必要になる場合があり、セキュリティインシデントの後に証拠として役立ちます

[脅威分析モデル～STRIDE～](https://hanakutoman.com/threat-modeling-stride/)

[Azure Defender for container registries の概要](https://docs.microsoft.com/ja-jp/azure/security-center/defender-for-container-registries-introduction)

[Azure Security Center (無料) と有効化された Azure Defender](https://docs.microsoft.com/ja-jp/azure/security-center/security-center-pricing)

[Azure Container Registry におけるコンテンツの信頼](https://docs.microsoft.com/ja-jp/azure/container-registry/container-registry-content-trust)

[Azure Container Registry のロールとアクセス許可](https://docs.microsoft.com/ja-jp/azure/container-registry/container-registry-roles?tabs=azure-cli)

***
## 1.3. モジュール03

### 1.3.1. [Azure Key Vault](https://docs.microsoft.com/ja-jp/learn/modules/azure-key-vault/?wt.mc_id=esi_m2l_content_wwl)

Azure keyコンテナー（Azure Key Vault）は、クラウドアプリケーションやサービスが使用する暗号化キーやシークレットの保護に役立ちます。シークレットとは、暗号化処理や認証に使用する機密性の高い情報のことで、具体的にはトークン、パスワード、証明書、API キーなどを指します。

Azure keyコンテナー（Azure Key Vault）では
- シークレット管理
- キー管理
- 証明書の管理
- HSMを使用したシークレットの格納（プレミアムのみ）
を扱うことができる。

> **Point**
> ストレージアカウントでカスタマーマネージドキーをサポートしているサービスは
> - BLOBストレージ
> - Azure Files

[保存データに対する Azure Storage 暗号化](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-service-encryption)

[Azure Key Vault のバックアップ](https://docs.microsoft.com/ja-jp/azure/key-vault/general/backup?tabs=azure-cli)

***
### 1.3.2. [アプリケーションのセキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/application-security/?wt.mc_id=esi_m2l_content_wwl)

AzureADとの連携シナリオ
- アプリのユーザー認証/認可に Azure AD を利用したい
- 開発したアプリに Azure AD 上のアプリケーション (O365 含む) の API アクセス許可を与えたい
- 開発したアプリの API を Azure AD で保護したい

このような代表的なシナリオの実現とそのアプリケーション開発/管理の機能を提供している機能群を Microsoft Identity Platform と呼んでいる

認証の仕組みを実装する場合は以下を提供している。
MSAL(Microsoft Authentication Library：Microsoft 認証ライブラリ）を取り込むことでMicrosoft ID プラットフォームエンドポイントを使用できる（マイクロソフトアカウント、組織アカウント、ソーシャルまたはローカルアカウント）

**MSAL は、Microsoft ID プラットフォームと併せて使用する際にお勧めの認証ライブラリ**

[Microsoft ID プラットフォームとは](https://docs.microsoft.com/ja-jp/azure/active-directory/develop/v2-overview)

[Microsoft ID プラットフォームにアプリケーションを登録する](https://docs.microsoft.com/ja-jp/azure/active-directory/develop/quickstart-register-app)

> **Point**
> - エンタープライズアプリケーション（サービスプリンシパル）
> - アプリの登録（アプリケーションオブジェクト）

[Azure Active Directory における管理タスク別の管理者ロール](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/delegate-by-task)

**Microsoft Graph には２種類のアクセス許可方法があります。**
- 委任されたアクセス許可：
  - **サインイン済みユーザーが存在するアプリ**で使用されます。この場合、ユーザーはアプリが要求するアクセス許可に同意して、アプリはMicrosoft Graph を呼び出すときにサインインユーザーとして機能できます。
- アプリケーションのアクセス許可：
  - サインイン済みユーザーが存在せずに実行されるアプリ (**バックグラウンド サービスやデーモンとして実行されるアプリなど**) で使用されます。アプリケーションの権限は、管理者のみが同意できます。

[Graph Explorer - Microsoft Graph](https://developer.microsoft.com/en-us/graph/graph-explorer)

[Microsoft ID プラットフォームでのアクセス許可と同意](https://docs.microsoft.com/ja-jp/azure/active-directory/develop/v2-permissions-and-consent#permission-types)

[Azure リソースのマネージド ID と Azure 仮想マシンの連携](https://docs.microsoft.com/ja-jp/azure/active-directory/managed-identities-azure-resources/how-managed-identities-work-vm)

**サービスプリンシパルとマネージドIDの違い**

| |サービスプリンシパル|マネージドID|
|:----|:----|:----|
|IDの管理|AAD|AAD|
|登録・運用|複雑|容易|
|オンプレミスアプリケーションまたはサービスのサポート|サポート|×|
|ポイント|オンプレミスアプリケーションを使用するときに利用|Azure内でクローズする認証はこちらを利用|

結論から言うと、Azure内で認証を使用する場合はマネージドIDを使用する。しかし、オンプレミスアプリケーションは未サポートなので、その場合はサービスプリンシパルを使用する。

[JSON Web Tokens - jwt.io](https://jwt.io/)

[Azure App Service に対する TLS 相互認証の構成](https://docs.microsoft.com/ja-jp/azure/app-service/app-service-web-configure-tls-mutual-auth)

***
### 1.3.3. [ストレージ セキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/storage-security/?wt.mc_id=esi_m2l_content_wwl)

**ストレージサービスの種類：**
- Azureコンテナー（BLOBストレージ-バイナリラージオブジェクト）
  - 画像またはドキュメントを保存して、直接ブラウザから参照可能。また仮想マシンのディスクの保存先としても活用されている。
- Azure Files
  - SMBを使用したファイル共有として使用。
- Table Storage
  - KVS（Key Value Storage）の環境を提供。Azure Cosmos DBの一部として使用するなどが可能
- Queue Storage
  - メッセージのキュー環境（格納と取得）に使用。例として、Azure Functionsと一緒に使用するなどが考えられる（プログラミング）。

**承認オプション**
- アカウント共有キー
- SAS（Shared Access Signatures）
- Azure Active Directory
- Active Directory（SMBのみ）
- 匿名アクセス（PublicなBlob）
アカウント共有キーとSASに関しては、すべてのストレージサービスで使用できます。BlobとキューはAADをサポートしています。

Blobを使用する際のアクセス認証方法の推奨方法は以下の通り
- AAD＞SAS＞共有キー＞匿名アクセス

SAS の種類

|SAS|AUTH|SCOPE|
|:----|:----|:----|
|アカウントSAS|ストレージアカウントキー|Storage account|
|サービスSAS|ストレージアカウントキー|Single resource|
|ユーザー委任 SAS|Azure AD|Single resource|

保存されたアクセスポリシー
ストレージアカウントに作成した各ストレージコンテナ個別に設定しているアクセスポリシーのこと。

[SAS を使用する際のベスト プラクティス](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-sas-overview#best-practices-when-using-sas)

[Azure Active Directory を使用して BLOB へのアクセスを認可する](https://docs.microsoft.com/ja-jp/azure/storage/blobs/authorize-access-azure-active-directory)

***
### 1.3.4. [データベース セキュリティ](https://docs.microsoft.com/ja-jp/learn/modules/sql-database-security/?wt.mc_id=esi_m2l_content_wwl)

[Azure SQL Database と SQL Managed Instance のセキュリティ機能の概要](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/security-overview)

**ユーザーの種類について**

SQL Serverには大きく分けて2種類のユーザーが存在しています。
- ログインするユーザー（テキストでは、ログインとして紹介）
  - SQL Server（インスタンス）へログインする際に使用するユーザーとなります。
- データベースを利用するユーザー（テキストでは、ユーザーアカウントとして紹介）
  - こちらはデータベース毎に作成するユーザーとなります。

ベストプラクティスとしては、各DBごとにユーザー作成する（テキストでは、包含データベースユーザーと記載）になります。この方法ならSQLインジェクションなどの脆弱性があった場合に、他のDBに波及せず侵害のリスクを軽減することができる。

[SQL Server Management Studio (SSMS) のダウンロード](https://docs.microsoft.com/ja-jp/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)

**SQL Database のファイアウォールの考え方**

SQL Database のファイアウォールは、利用する接続を追記する設定方法。よって、基本はブロックだが、登録されていればアクセス可能ですよ！になる。
- SQL DBのファイアウォールが2つ存在する。
  - SQLサーバーのファイアウォールと、SQL Databaseのファイアウォール。
- Portalで設定できるのはSQLサーバーのファイアウォールである。
- SQL Databaseのファイアウォールは、Portalから操作はできない。SQL文を書いてFWをコントロールする。
- DBレベル、または、サーバーレベルのファイアウォールのどちらかで許可されていればアクセスできる。両方ではないことに注意。
先に評価されるのは、DBレベル。

ベストプラクティスとしては、可能な限りデータベースレベルのIPファイアウォール規則を使用する。

[データベースレベルのファイアウォール規則](https://docs.microsoft.com/ja-jp/sql/relational-databases/system-stored-procedures/sp-set-database-firewall-rule-azure-sql-database?view=azuresqldb-current)

[ポータルを使用して仮想ネットワーク規則を作成する](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/vnet-service-endpoint-rule-overview#anchor-how-to-by-using-firewall-portal-59j)

[Azure SQL Database と Azure Synapse Analytics の接続アーキテクチャ](https://docs.microsoft.com/ja-jp/azure/azure-sql/database/connectivity-architecture)

**監査の設定**
- サーバーレベル
  - 既定の監査ポリシーには、すべてのアクションと次のアクション グループのセットが含まれます。これは、データベースに対して実行されたすべてのクエリとストアド プロシージャに加えて、成功および失敗したログインを監査（管理の変更やログオンおよびログオフの操作などのサーバーの操作が含まれます）します。
- データベースレベル
  - これらのアクションには、データ操作言語 (DML) とデータ定義言語 (DDL) の操作が含まれます。

通常は、サーバーポリシーのみONにする。
- データベースレベルの監査の設定の有無にかかわらず、データベースレベルの監査が行われる。

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

**クエリに関して**
- Deterministicの場合は、当該列の等値比較のみ可能
- Randomizedの場合は、当該列によるクエリ不可

[Always Encrypted](https://docs.microsoft.com/ja-jp/sql/relational-databases/security/encryption/always-encrypted-database-engine?view=sql-server-ver15#feature-details)

[Always Encrypted のキー管理の概要](https://docs.microsoft.com/ja-jp/sql/relational-databases/security/encryption/overview-of-key-management-for-always-encrypted?view=sql-server-ver15)

***

**Lab10 の補足**

- PDT update suggestionsフォルダに入っている「az-500-10_azuredeploy.json」ファイルを使用する。

**演習3 の タスク5(12-19)の Always Encrypted を PowerShell で行う方法**

**事前準備**

- クラウドIDを作成する（admin@xxx.onmicrosoft.com）
- 作成したクラウドIDにライセンス（P2ライセンス）を付与する
- 作成したクラウドIDに「グローバル管理者」のロールを割り当てる
- KeyVault のアクセスポリシーで作成したクラウドIDに対して、すべての権限を付与する
- KeyVault のキーで「CMK1」を既定の設定で作成する（キー識別子をコピーしておく）
- SQL Database のファイヤーウォール設定にて、ローカルコンピューターのIPを登録する

**次のコマンドをローカルコンピューターの PowerShell から実行する**

> Cloud Shell や PowerShell 7.x では SQL Server モジュールが正常に動作しない場合（モジュールは存在しているが、タブキーで候補が出ない）があるので、デフォルトでインストールされている PowerShell 5.x を使用する。もしくは、Windows ストアから Windows ターミナルをダウンロードして使用する。下記コマンドは Windows ターミナルにて動作確認済み。

```powershell
# 管理者として PowerShell を起動する。必要に応じてPowerShell モジュールをインストールする。

Install-Module az
Install-Module SqlServer

# Azure を PowerShell で操作できるようにする。作成したクラウドIDを使用する。key VaultをPowerShellから作成する場合は必要になるが今回はGUIで作成するので厳密にはこの作業は必要なし。
Import-Module Az
Connect-AzAccount

# Connect to your database (Azure SQL database).
Import-Module "SqlServer"
$serverName = "<servername>.database.windows.net"
$databaseName = "medical"
# customize the string to include current server name and username/password. This is the connection string you wwere told to record.
# $connStr は 接続文字列の「ADO.NET」に記載されている情報と同じ
$connStr = "Server=tcp:<server name>.database.windows.net,1433;Initial Catalog=medical;Persist Security Info=False;User ID=Student;Password=Pa55w.rd1234;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
$database = Get-SqlDatabase -ConnectionString $connStr

# Create a SqlColumnMasterKeySettings object for your column master key --This URL can be found by editing the key and then current version
# 下記コマンドがうまく動かないときは、New-SqlAzureKeyVaultColumnMasterKeySettings コマンドが有効か確認する。PowerShell のバージョンによってはこのコマンドが無効の可能性がある。Cloud Shell ではこのコマンドが無効であることは確認済み。KeyURL の情報は、事前に作成した「CMK1」の **キー識別子** となる。
$cmkSettings = New-SqlAzureKeyVaultColumnMasterKeySettings -KeyURL "https://<key vault name>.vault.azure.net/keys/<plain text key name>/<key version>"

# Create column master key metadata in the database.
$cmkName = "CMK1"
New-SqlColumnMasterKey -Name $cmkName -InputObject $database -ColumnMasterKeySettings $cmkSettings

# Authenticate to Azure
# ここで使用するアカウントは事前に作成した「クラウドID」を使用する。
Add-SqlAzureAuthenticationContext -Interactive

# Generate a column encryption key, encrypt it with the column master key and create column encryption key metadata in the database. 
$cekName = "CEK1"
New-SqlColumnEncryptionKey -Name $cekName -InputObject $database -ColumnMasterKey $cmkName

# Encrypt the selected columns (or re-encrypt, if they are already encrypted using keys/encrypt types, different than the specified keys/types.
$ces = @()
$ces += New-SqlColumnEncryptionSettings -ColumnName "dbo.Patients.SSN" -EncryptionType "Deterministic" -EncryptionKey "CEK1"
$ces += New-SqlColumnEncryptionSettings -ColumnName "dbo.Patients.BirthDate" -EncryptionType "Randomized" -EncryptionKey "CEK1"
Set-SqlColumnEncryption -InputObject $database -ColumnEncryptionSettings $ces -LogFileDirectory .
```
すべてのコマンドが実行できたら、SQLデータベースの medical>Security>Always Encypted Keys>Column Master Keys に **CMK1** と、medical>Security>Always Encypted Keys>Column Encryption Keys に **CEK1** が作成されていることを確認する。

***
## 1.4. モジュール04

### 1.4.1. [Azure Monitor](https://docs.microsoft.com/ja-jp/learn/modules/azure-monitor/?wt.mc_id=esi_m2l_content_wwl)

[Kusto の概要](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/concepts/)

[Log Analytics Demo Site](https://aka.ms/lademo)

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


***
### 1.4.2. [Azure Security Center](https://docs.microsoft.com/ja-jp/learn/modules/azure-security-center/?wt.mc_id=esi_m2l_content_wwl)

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
### 1.4.3. [Microsoft Sentinel](https://docs.microsoft.com/ja-jp/learn/modules/azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Sentinel のドキュメント](https://docs.microsoft.com/ja-jp/azure/sentinel/)

[Microsoft Sentinel データ コネクタ](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-data-sources)

[Find your Microsoft Sentinel data connector](https://docs.microsoft.com/en-us/azure/sentinel/data-connectors-reference)

-->