**SC-300：Microsoft Identity and Access Administrator**
***

最終更新日 2025/05/08

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

SC-300のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境で提供されました。
> - このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

**リンク一覧およびメモ（参考）**

SC-300 ラボトップ（[日本語](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/tree/main/Instructions/Labs)/[英語](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator/tree/master/Instructions/Labs)）

[SC-300 テキスト](https://docs.microsoft.com/ja-jp/users/msftofficialcurriculum-4292/collections/neqjf5m3z241wg?wt.mc_id=esi_m2l_content_wwl)

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

> [!NOTE]
> - トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
> - メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

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

**ラボのリンク**

 > 以前のラボ環境では Azure Pass が提供されていました。現在は CloudSlice 環境に移行したので正式な手順は CloudSlice 環境に記載されています。この手順はほとんど CloudSlice 環境と同じですが CloudSlice 環境の制約によって細かい部分が異なる場合があります。そのため、参考程度にとどめてください。

- モジュール01
  - [ラボ 00 - ラボ環境のセットアップ](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_00_SetUpLabResources.md)
  - [ラボ 01 - ユーザー ロールを管理する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_01_ManageUserRoles.md)
  - [ラボ 02 - テナントのプロパティを操作する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_02_WorkingWithTenantProperties.md)
  - [ラボ 03 - グループ メンバーシップを使用してライセンスを割り当てる](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_03_AssignLicensesToUsersByGroupMembershipAAD.md)
  - [ラボ 04 - 外部コラボレーションの設定を構成する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_04_ConfigureExternalCollaborationSettings.md)
  - [ラボ 05 - ゲスト ユーザーをディレクトリに追加する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_05_AddGuestUsersToTheDirectory.md)
  - [ラボ 06 - フェデレーション ID プロバイダーを追加する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_06_AddFederatedIdentityProvider.md)
  - [ラボ 07 - Azure AD Connect を使用してハイブリッド ID を追加する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_07_AddHybridIdentityWithAzureADConnect.md)


- モジュール02
  - [ラボ 08 - Azure AD の多要素認証を有効にする](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_08_EnableAzureADMultiFactorAuthentication.md)
  - [ラボ 09 - セルフサービス パスワード リセットを構成してデプロイする](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_09_ConfigureAndDeploySelfServicePasswordReset.md)
  - [ラボ 10 - Windows および Linux Virtual Machines に対する Azure AD Authentication](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_10_AzureADAuthenticationForWindowsAndLinuxVM.md)
  - [ラボ 11 - Privileged Identity Management で Azure リソース ロールを割り当てる](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_11_AssignAzureResourceRolesInPrivilegedIdentityManagement.md)
  - [ラボ 12 - Azure AD スマート ロックアウトの値を管理する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_12_ManageAzureADSmartLockoutValues.md)
  - [ラボ 13 - 条件付きアクセス ポリシーの実装とテストを行う](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_13_ImplementAndTestAConditionalAccessPolicy.md)
  - [ラボ 14 - サインインとユーザー リスク ポリシーを有効にする](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_14_EnableSignRiskPolicy.md)
  - [ラボ 15 - Azure AD の多要素認証登録ポリシーを構成する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_15_ConfigureAAD_MultiFactorAuthRegPolicy.md)
  - [ラボ 16 - マネージド ID に Azure Key Vault を使用する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_16_UsingAzureKeyVaultForManagedIdentities.md)



- モジュール03
  - [ラボ 17 - Defender for Cloud Apps アプリケーション検出と制限適用](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_17_DefenderForCloudAppsDiscoveryAndRestrictions.md)
  - [ラボ 18 - Defender for Cloud Apps アクセスとセッション ポリシー](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_18_DefenderForCloudAppsAccessPolicies.md)
  - [ラボ 19 - アプリケーションを登録する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_19_RegisterAnApplication.md)
  - [ラボ 20 - アプリのアクセス管理を実装する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_20_ImplementAccessManagementForApps.md)
  - [ラボ 21 - アプリケーションに対してテナント全体の管理者の同意を付与する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_21_GrantTenantWideAdminConsentToAnApplication.md)


- モジュール04
  - [ラボ 22 - Azure AD エンタイトルメント管理でリソースのカタログを作成して管理する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_22_CreateAndManageACatalogOfResourcesInAADEntitlementManagement.md)
  - [ラボ 23 - 利用規約と同意レポートを追加する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_23_AddTermsOfUseAcceptanceReporting.md)
  - [ラボ 24 - Azure AD Identity Governance の設定で外部ユーザーのライフサイクルを管理する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_24_ManageTheLifecycleOfExternalUsersInAADIdentityGovernanceSettings%20.md)
  - [ラボ 25 - 内部および外部ユーザーのアクセス レビューの作成](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_25_CreatingAccessReviewsForUsers.md)
  - [ラボ 26 - Azure AD ロール用に Privileged Identity Management を構成する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_26_ConfigurePrivilegedIdentityManagementForAADRoles.md)
  - [ラボ 27 - Azure AD データ ソースの Microsoft Sentinel Kusto クエリ](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_27_MicrosoftSentinelKustoQueries.md)
  - [ラボ 28 - ID セキュリティ スコアを使用してセキュリティ態勢を監視および管理する](https://github.com/MicrosoftLearning/SC-300-Identity-and-Access-Administrator.JA-JP/blob/main/Instructions/Labs/Lab_28_MonitorIdentitySecureScore.md)


***

<!--
# 1. モジュール01
## 1.1. [Entra ID の初期構成を実装する](https://docs.microsoft.com/ja-jp/learn/modules/implement-initial-configuration-of-azure-active-directory/?wt.mc_id=esi_m2l_content_wwl)


**管理ポータル**

- [Azure portal](https://portal.azure.com/)
- [Entra ID 管理センター](https://aad.portal.azure.com/)
- [Microsoft 365 管理センター](https://admin.microsoft.com/)
- [Microsoft Defender](https://security.microsoft.com/)

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

## 1.2. [ID を作成、構成、管理する](https://docs.microsoft.com/ja-jp/learn/modules/create-configure-manage-identities/?wt.mc_id=esi_m2l_content_wwl)

[Entra ID の動的グループ メンバーシップ ルール](https://docs.microsoft.com/ja-jp/azure/active-directory/enterprise-users/groups-dynamic-membership)

[Entra ID の動的グループ メンバーシップ ルール](https://docs.microsoft.com/ja-jp/azure/active-directory/enterprise-users/groups-dynamic-membership)

[動的グループと Entra ID B2B コラボレーション](https://docs.microsoft.com/ja-jp/azure/active-directory/external-identities/use-dynamic-groups)
## 1.3. [外部 ID を実装および管理する](https://docs.microsoft.com/ja-jp/learn/modules/implement-manage-external-identities/?wt.mc_id=esi_m2l_content_wwl)

[Entra ID B2C とは](https://docs.microsoft.com/ja-jp/azure/active-directory-b2c/overview)

[Entra ID の External Identities](https://docs.microsoft.com/ja-jp/azure/active-directory/external-identities/external-identities-overview)

## 1.4. [ハイブリッド ID の実装と管理](https://docs.microsoft.com/ja-jp/learn/modules/implement-manage-hybrid-identity/?wt.mc_id=esi_m2l_content_wwl)

[ハイブリッド ID で必要なポートとプロトコル](https://docs.microsoft.com/ja-jp/azure/active-directory/hybrid/reference-connect-ports)

[Entra Connect:アカウントとアクセス許可](https://docs.microsoft.com/ja-jp/azure/active-directory/hybrid/reference-connect-accounts-permissions)

[Entra Connect クラウド同期の FAQ](https://docs.microsoft.com/ja-jp/azure/active-directory/cloud-sync/reference-cloud-sync-faq)

[Entra Connect クラウド同期とは](https://docs.microsoft.com/ja-jp/azure/active-directory/cloud-sync/what-is-cloud-sync)

[Entra Connect クラウド同期の前提条件](https://docs.microsoft.com/ja-jp/azure/active-directory/cloud-sync/how-to-prerequisites)

# 2. モジュール02
## 2.1. [多要素認証によるセキュリティで Entra ID ユーザーを保護する](https://docs.microsoft.com/ja-jp/learn/modules/secure-aad-users-with-mfa/?wt.mc_id=esi_m2l_content_wwl)

[Azure のネットワーク ポリシー サーバー拡張機能を使用して VPN インフラストラクチャを Entra ID MFA と統合する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-mfa-nps-extension-vpn)

[Entra ID の多要素認証のデプロイを計画する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-mfa-getstarted)

## 2.2. [ユーザー認証を管理する](https://docs.microsoft.com/ja-jp/learn/modules/manage-user-authentication/?wt.mc_id=esi_m2l_content_wwl)

[Entra ID パスワード保護を使用して不適切なパスワードを排除する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-password-ban-bad)

[Entra ID でのパスワード ポリシーと脆弱なパスワードの組み合わせチェック](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-password-ban-bad-combined-policy)

[Active Directory Domain Services にオンプレミスの Entra ID パスワード保護を適用する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-password-ban-bad-on-premises)

[アクセスをテナントに制限する](https://docs.microsoft.com/ja-jp/azure/active-directory/manage-apps/tenant-restrictions)

[テナント制限について](https://jpazureid.github.io/blog/azure-active-directory/tenant-restriction/)

**参照URL**
- [Entra ID での統合されたセキュリティ情報の登録の有効化](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-registration-mfa-sspr-combined)
- [Entra ID で回復性があるアクセス制御管理戦略を作成する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-resilient-controls)
- [Entra ID認証方法 API の概要](https://docs.microsoft.com/ja-jp/graph/api/resources/authenticationmethods-overview?view=graph-rest-1.0)
- [Windows Hello for Business](https://docs.microsoft.com/ja-jp/windows/security/identity-protection/hello-for-business/hello-overview)
- [Entra ID の認証方法 - Microsoft Authenticator アプリ](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-authentication-authenticator-app)
- [Entra ID のパスワードレス認証オプション](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-authentication-passwordless)
- [Entra ID の認証方法 - OATH トークン](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-authentication-oath-tokens)
- [Entra ID を使用して SMS ベース認証用にユーザーを構成して有効にする](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-authentication-sms-signin)
- [Entra ID の認証方法 - 電話オプション](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-authentication-phone-options)
- [Active Directory Domain Services にオンプレミスの Entra ID パスワード保護を適用する](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/concept-password-ban-bad-on-premises)
- [オンプレミスの Entra ID パスワード保護を有効にする](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-password-ban-bad-on-premises-operations)
- [Step-By-Step: Implementing Entra ID Password Protection On-Premises](https://techcommunity.microsoft.com/t5/itops-talk-blog/step-by-step-implementing-azure-ad-password-protection-on/ba-p/563342)

## 2.3. [条件付きアクセスの計画、実装、管理を行う](https://docs.microsoft.com/ja-jp/learn/modules/plan-implement-administer-conditional-access/?wt.mc_id=esi_m2l_content_wwl)

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

**参照URL**
- [条件付きアクセスとは](https://www.youtube.com/watch?v=ffMAw2IVO7A)
- [条件付きアクセスをデプロイする方法](https://www.youtube.com/watch?v=c_izIRNJNuk)
- [CA ポリシーをエンド ユーザーにロール アウトする方法](https://www.youtube.com/watch?v=0_Fze7Zpyvc)
- [デバイス コントロールを使用した条件付きアクセス](https://www.youtube.com/watch?v=NcONUf-jeS4)
- [Azure MFA を使用した条件付きアクセス](https://www.youtube.com/watch?v=Tbc-SU97G-w)
- [Enterprise Mobility + Security の条件付きアクセス](https://www.youtube.com/watch?v=A7IrxAH87wc)
- [条件付きアクセスポリシーでの場所の条件の使用](https://docs.microsoft.com/ja-jp/azure/active-directory/conditional-access/location-condition)
- [コンプライアンス ポリシーを使用して、Intune で管理するデバイスのルールを設定する](https://docs.microsoft.com/ja-jp/mem/intune/protect/device-compliance-get-started)
- [セキュリティの既定値群を実装する](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/introducing-security-defaults/ba-p/1061414)

## 2.4. [Entra Identity Protection を管理する](https://docs.microsoft.com/ja-jp/learn/modules/manage-azure-active-directory-identity-protection/?wt.mc_id=esi_m2l_content_wwl)

**参照URL**
- [Identity Protection とは](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/overview-identity-protection)
- [Entra ID での統合されたセキュリティ情報の登録の有効化](https://docs.microsoft.com/ja-jp/azure/active-directory/authentication/howto-registration-mfa-sspr-combined)
- [Entra ID で緊急アクセス用管理者アカウントを管理する](https://docs.microsoft.com/ja-jp/azure/active-directory/roles/security-emergency-access)
- [方法:リスク ポリシーを構成して有効にする](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/howto-identity-protection-configure-risk-policies)
- [Azure リソースのマネージド ID とは](https://docs.microsoft.com/ja-jp/azure/active-directory/managed-identities-azure-resources/overview)
- [リスクを修復してユーザーをブロック解除する](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/howto-identity-protection-remediate-unblock)
- [Entra Identity Protection の通知](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/howto-identity-protection-configure-notifications)
- [Identity Protection ポリシー](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/concept-identity-protection-policies)

# 3. モジュール03
## 3.1. [SSO 用エンタープライズ アプリの統合を計画し、設計する](https://docs.microsoft.com/ja-jp/learn/modules/plan-design-integration-of-enterprise-apps-for-sso/?wt.mc_id=esi_m2l_content_wwl)
## 3.2. [SSO 用エンタープライズ アプリの統合を実装し、監視する](https://docs.microsoft.com/ja-jp/learn/modules/implement-monitor-integration-of-enterprise-apps-for-sso/?wt.mc_id=esi_m2l_content_wwl)
## 3.3. [アプリの登録を実装する](https://docs.microsoft.com/ja-jp/learn/modules/implement-app-registration/?wt.mc_id=esi_m2l_content_wwl)
# 4. モジュール04
## 4.1. [エンタイトルメント管理を計画して実装する](https://docs.microsoft.com/ja-jp/learn/modules/plan-implement-entitlement-management/?wt.mc_id=esi_m2l_content_wwl)

エンタイトルメント管理での用語

|用語|説明|
|:----|:----|
|アクセス パッケージ|チームまたはプロジェクトが必要とし、ポリシーに準拠しているリソースをまとめた物。 アクセス パッケージは常にカタログに含まれているリソースから選択され作成されます。|
|アクセス要求(リクエスト)|アクセス パッケージのリソースへのアクセス要求。 要求は通常、承認ワークフローを通じて処理されます。 承認されると、要求元のユーザーにアクセス パッケージが割り当てられます。|
|割り当て|アクセス パッケージ内のリソースへのアクセス権をユーザーに付与する事。 通常、アクセス パッケージの割り当てには有効期限があり、期限が切れると失効します。|
|カタログ|関連リソースとアクセス パッケージをまとめた物。 カタログは主に管理の委任に使用されます。これにより、管理者以外のユーザーが独自のアクセス パッケージを作成できるようにすることができます。 カタログ所有者は、自分が所有するリソースをカタログに追加できます。|
|接続されている組織|自組織が関係を持っている、外部の Azure AD ディレクトリ/テナント。 接続された組織のユーザーは、アクセス権の要求を許可されたユーザーとして、ポリシーで指定できます。|
|ポリシー|アクセス権のライフサイクルを定義する一連のルール (どのようなユーザーが要求できるか、誰が承認を実行できるか、割り当てによって付与されたアクセス権がいつ失効するかなど)。 ポリシーはアクセス パッケージにリンクされます。 たとえば、アクセス パッケージに 2 つのポリシーを含めて、1 つは従業員によるアクセス要求、もう 1 つは外部ユーザーによるアクセス要求に使用することもできます。|
|リソース|Office グループ、セキュリティ グループ、アプリケーション、SharePoint Online サイトなどのアセット/資産。アクセス許可は、ロールによってユーザーに付与します。|
|リソース ロール|リソースに関連付けられ、リソースによって定義されている一連のアクセス許可の種類。 主に、リソースに対して、どのような立場でアクセスするかを定義します。グループには 2 つのロールがあります (メンバーと所有者)。 SharePoint サイトには通常 3 つのロールがありますが、追加のカスタム ロールを使用することもできます。 アプリケーションにはカスタム ロールを設定できます。|

## 4.2. [アクセス レビューの計画、実装、管理](https://docs.microsoft.com/ja-jp/learn/modules/plan-implement-manage-access-review/?wt.mc_id=esi_m2l_content_wwl)
## 4.3. [特権アクセスを計画し、実装する](https://docs.microsoft.com/ja-jp/learn/modules/plan-implement-privileged-access/?wt.mc_id=esi_m2l_content_wwl)
## 4.4. [Entra ID を監視および保守する](https://docs.microsoft.com/ja-jp/learn/modules/monitor-maintain-azure-active-directory/?wt.mc_id=esi_m2l_content_wwl)

-->