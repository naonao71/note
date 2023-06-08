**SC-200 Microsoft セキュリティ運用アナリスト**
***

最終更新日 2023/06/07

**リンク一覧およびメモ**

SC-200 ラボトップ（[日本語](https://github.com/MicrosoftLearning/SC-200T00A-Microsoft-Security-Operations-Analyst.ja-jp/tree/main/Instructions/Labs)/[英語](https://github.com/MicrosoftLearning/SC-200T00A-Microsoft-Security-Operations-Analyst/tree/master/Instructions/Labs)）

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/users/msftofficialcurriculum-4292/collections/zwm5c4dezn0k1n?wt.mc_id=esi_m2l_content_wwl)

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

[SC-200補足資料Ver1.3](https://github.com/naonao71/note/blob/main/SC-200/SC-200%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99Ver1.3.pdf)

- ローカルにダウンロードする

[ESI Security Courses 配布用](https://github.com/naonao71/note/blob/main/AZ-500/ESI%20Security%20Courses%20%E9%85%8D%E5%B8%83%E7%94%A8.pdf)

- Microsoft が提供しているコース内容概要マップ

***

**ラボのシミュレーション（英語版）**

[SC-200 Interactive Simulations](https://mslabs.cloudguides.com/guides/SC-200%20Lab%20Simulations%20-%20Microsoft%20Security%20Operations%20Analyst)

**ラボのリンク（講師による翻訳修正済み）**

- モジュール01
  - [演習 1 - Microsoft 365 Defender の確認](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_01_Lab1_Ex1_Explore_M365_Defender.md)
- モジュール02
  - [演習 1 - Microsoft Defender for Endpoint のデプロイ](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_02_Lab1_Ex1_Deploy_Defender_Endpoint.md)
  - [演習 2 - Microsoft Defender for Endpoint を使用した攻撃の軽減](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_02_Lab1_Ex2_Mitigate_Attacks.md)
- モジュール03
  - [演習 1 - Microsoft Defender for Cloud の有効化](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_03_Lab1_Ex1_Enable_Defender.md)
  - [演習 2 - Microsoft Defender for Cloud を使用して脅威を軽減する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_03_Lab1_Ex2_Azure_Defender.md)
- モジュール04
  - [演習 1 - Kusto クエリ言語 (KQL) を使用して Microsoft Sentinel のクエリを作成する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_04_Lab1_Ex1_KQL.md)
- モジュール05
  - [演習 1 - Microsoft Sentinel 環境を構成する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_05_Lab1_Ex1_Deploy_Sentinel.md)
- モジュール06
  - [演習 1 - データ コネクタを使用して Microsoft Sentinel にデータを接続する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_06_Lab1_Ex1_Connect_Services.md)
  - [演習 2 - データ コネクタを使用して Windows デバイスを Microsoft Sentinel に接続する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_06_Lab1_Ex2_Connect_Windows.md)
  - [演習 3 - データ コネクタを使用して Linux ホストを Microsoft Sentinel に接続する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_06_Lab1_Ex3_Connect_Linux.md)
<!--  - [演習 4 - データ コネクタを使用して脅威インテリジェンスを Microsoft Sentinel に接続する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_06_Lab1_Ex4_Connect_Threat_Intel.md)-->
- モジュール07
  - [演習 1 - Microsoft セキュリティ ルールを有効化する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex1_Security_Rule.md)
  - [演習 2 - プレイブックを作成する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex2_Playbook.md)
  - [演習 3 - スケジュールされたクエリを作成する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex3_Scheduled_Query.md)
  - [演習 4 - エンティティ行動分析の探索](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex4_Entity_Behavior.md)
  - [演習 5 - 検出モデリングを理解する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex4_Attacks.md)
  - [演習 6 - 攻撃の実施](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex5_Perform_Attacks.md)
  - [演習 7 - 検出を作成する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex6_Detections.md)
  - [演習 8 - インシデントを調査する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex7_Investigate.md)
  - [演習 9 - ASIM パーサーの作成](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex9_ASIM.md)
  - [演習 10 - ワークブックを作成する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex10_Workbooks.md)
  - [演習 11 - Microsoft Sentinel でリポジトリを使用する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_07_Lab1_Ex11_Content_Management.md)
- モジュール08
  - [演習 1 - Microsoft Sentinel で脅威ハンティングを実行する](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_08_Lab1_Ex1_Hunting.md)
  - [演習 2 - Microsoft Sentinel でノートブックを使用した脅威ハンティング](https://github.com/naonao71/SC-200T00JA-Microsoft-Security-Operations-Analyst/blob/master/Instructions/Labs/LAB_AK_08_Lab1_Ex2_Notebooks.md)
***

**研修の準備**

- [トレーニングで使用するテキスト](https://docs.microsoft.com/ja-jp/users/msftofficialcurriculum-4292/collections/zwm5c4dezn0k1n?wt.mc_id=esi_m2l_content_wwl)
- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)
- [Azure Pass サブスクリプションの入手](https://www.microsoftazurepass.com/)

***



- [1. モジュール01](#1-モジュール01)
  - [1.1. Microsoft 365 による脅威保護の紹介](#11-microsoft-365-による脅威保護の紹介)
  - [1.2. Microsoft 365 Defender を使用してインシデントを軽減する](#12-microsoft-365-defender-を使用してインシデントを軽減する)
  - [1.3. Microsoft Defender for 365 を使用してリスクを修復する](#13-microsoft-defender-for-365-を使用してリスクを修復する)
  - [1.4. Microsoft Defender for Identity](#14-microsoft-defender-for-identity)
  - [1.5. Azure AD Identity Protection](#15-azure-ad-identity-protection)
  - [1.6. Microsoft Defender for Cloud Apps](#16-microsoft-defender-for-cloud-apps)
  - [1.7. データ損失防止アラートへの対応](#17-データ損失防止アラートへの対応)
  - [1.8. 1.8 Microsoft 365 で insider リスクを管理する](#18-18-microsoft-365-で-insider-リスクを管理する)
- [2. モジュール02](#2-モジュール02)
  - [2.1. Microsoft Defender for Endpoint を使用して脅威から保護する](#21-microsoft-defender-for-endpoint-を使用して脅威から保護する)
  - [2.2. Microsoft Defender for Endpoint の環境をデプロイする](#22-microsoft-defender-for-endpoint-の環境をデプロイする)
  - [2.3. Windows 10 のセキュリティ強化の実施](#23-windows-10-のセキュリティ強化の実施)
  - [2.4. Microsoft Defender for Endpoint でアラートとインシデントを管理する](#24-microsoft-defender-for-endpoint-でアラートとインシデントを管理する)
  - [2.5. デバイス調査の実行](#25-デバイス調査の実行)
  - [2.6. デバイス上でのアクションの実行](#26-デバイス上でのアクションの実行)
  - [2.7. 証拠とエンティティ調査の実行](#27-証拠とエンティティ調査の実行)
  - [2.8. 自動化を構成および管理する](#28-自動化を構成および管理する)
  - [2.9. アラートと検出の設定](#29-アラートと検出の設定)
  - [2.10. 脅威と脆弱性の管理を活用する](#210-脅威と脆弱性の管理を活用する)
- [3. モジュール03](#3-モジュール03)
  - [3.1. Microsoft Defender for Cloud を使用してクラウドワークロード保護を計画する](#31-microsoft-defender-for-cloud-を使用してクラウドワークロード保護を計画する)
  - [3.2. Microsoft Defender for Cloud をのクラウドワークロード保護について説明する](#32-microsoft-defender-for-cloud-をのクラウドワークロード保護について説明する)
  - [3.3. Azure 資産を Microsoft Defender for Cloud に接続する](#33-azure-資産を-microsoft-defender-for-cloud-に接続する)
  - [3.4. Azure 以外の資産を Microsoft Defender for Cloud に接続する](#34-azure-以外の資産を-microsoft-defender-for-cloud-に接続する)
  - [3.5. Microsoft Defender for Cloud を使用してセキュリティアラートを修復する](#35-microsoft-defender-for-cloud-を使用してセキュリティアラートを修復する)
- [4. モジュール04](#4-モジュール04)
  - [4.1. Microsoft Sentinel の KQL ステートメントの構築](#41-microsoft-sentinel-の-kql-ステートメントの構築)
  - [4.2. KQL を使用してクエリ結果を分析する](#42-kql-を使用してクエリ結果を分析する)
  - [4.3. KQL を使用して複数のテーブル用のステートメントを作成する](#43-kql-を使用して複数のテーブル用のステートメントを作成する)
  - [4.4. Kusto クエリ言語を使用して Microsoft Sentinel でデータを操作する](#44-kusto-クエリ言語を使用して-microsoft-sentinel-でデータを操作する)
- [5. モジュール05](#5-モジュール05)
  - [5.1. Microsoft Sentinel の概要](#51-microsoft-sentinel-の概要)
  - [5.2. Microsoft Sentinel ワークスペースの作成と管理](#52-microsoft-sentinel-ワークスペースの作成と管理)
  - [5.3. Microsoft Sentinel のログのクエリを実行する](#53-microsoft-sentinel-のログのクエリを実行する)
  - [5.4. Microsoft Sentinel でウォッチリストを使用する](#54-microsoft-sentinel-でウォッチリストを使用する)
  - [5.5. Microsoft Sentinel の脅威インテリジェンスを利用する](#55-microsoft-sentinel-の脅威インテリジェンスを利用する)
- [6. モジュール06](#6-モジュール06)
  - [6.1. データコネクタを使用して Microsoft Sentinel にデータを接続する](#61-データコネクタを使用して-microsoft-sentinel-にデータを接続する)
  - [6.2. Microsoft サービスをMicrosoft Sentinel に接続する](#62-microsoft-サービスをmicrosoft-sentinel-に接続する)
  - [6.3. Microsoft Defender を Microsoft Sentinel に接続する](#63-microsoft-defender-を-microsoft-sentinel-に接続する)
  - [6.4. Windows ホストを Microsoft Sentinel に接続する](#64-windows-ホストを-microsoft-sentinel-に接続する)
  - [6.5. Microsoft Sentinel に Common Event Format のログを接続する](#65-microsoft-sentinel-に-common-event-format-のログを接続する)
  - [6.6. Microsoft Sentinel に Syslog データソースを接続する](#66-microsoft-sentinel-に-syslog-データソースを接続する)
  - [6.7. 脅威インジケーターを Microsoft Sentinel に接続する](#67-脅威インジケーターを-microsoft-sentinel-に接続する)
- [7. モジュール07](#7-モジュール07)
  - [7.1. Microsoft Sentinel の分析を使用した脅威検出](#71-microsoft-sentinel-の分析を使用した脅威検出)
  - [7.2. Microsoft Sentinel でのセキュリティ インシデント管理](#72-microsoft-sentinel-でのセキュリティ-インシデント管理)
  - [7.3. Microsoft Sentinel プレイブックを使用した脅威対処](#73-microsoft-sentinel-プレイブックを使用した脅威対処)
  - [7.4. Microsoft Sentinel でのエンティティの行動分析の使用](#74-microsoft-sentinel-でのエンティティの行動分析の使用)
  - [7.5. Microsoft Sentinel でのデータクエリ、視覚化、監視](#75-microsoft-sentinel-でのデータクエリ視覚化監視)
- [8. モジュール08](#8-モジュール08)
  - [8.1. Microsoft Sentinel における脅威ハンティングの概念](#81-microsoft-sentinel-における脅威ハンティングの概念)
  - [8.2. Microsoft Sentinel を使用した脅威ハンティング](#82-microsoft-sentinel-を使用した脅威ハンティング)
  - [8.3. Microsoft Sentinel でノートブックを使用して脅威をハンティングする](#83-microsoft-sentinel-でノートブックを使用して脅威をハンティングする)


***

# 1. モジュール01

**管理ポータル**

- [Azure portal](https://portal.azure.com/)
- [Azure Active Directory 管理センター](https://aad.portal.azure.com/)
- [Microsoft 365 管理センター](https://admin.microsoft.com/)
- [Microsoft 365 Defender](https://security.microsoft.com/)
- [Microsoft 365 コンプライアンス](https://compliance.microsoft.com/)
- [Microsoft Defender for Cloud Apps](https://portal.cloudappsecurity.com/)

## 1.1. [Microsoft 365 による脅威保護の紹介](https://docs.microsoft.com/ja-jp/learn/modules/m365-security-threat-define/)
## 1.2. [Microsoft 365 Defender を使用してインシデントを軽減する](https://docs.microsoft.com/ja-jp/learn/modules/mitigate-incidents-microsoft-365-defender/)

[MITRE ATT&CK](https://www.intellilink.co.jp/article/column/attack-mitre-sec01.html)

[Matrix for Enterprise](https://attack.mitre.org/versions/v7/)

ATT&CKでは、戦術(Tactics)として12の戦術を選定しています。攻撃者は「初期アクセス(Initial Access)」から始まり、次の戦術へと移行して最終的には「影響(Impact)」まで行動することがあります。

|戦術|概要|
|:----|:----|
|初期アクセス(Initial Access)|攻撃者がネットワークに侵入しようとしている。|
|実行(Execution)|攻撃者が悪意のあるコードを実行しようとしている。|
|永続化(Persistence)|攻撃者が不正アクセスする環境を確保しようとしている。|
|権限昇格(Privilege Escalation)|攻撃者がより高いレベルの権限を取得しようとしている。|
|防衛回避(Defense Evasion)|攻撃者が検知されないようにしようとしている。|
|認証情報アクセス(Credential Access)|攻撃者がアカウント名とパスワードを盗もうとしている。|
|探索(Discovery)|攻撃者がアクセス先の環境を理解しようとしている。|
|水平展開(Lateral Movement)|攻撃者がアクセス先の環境を移動しようとしている。|
|収集(Collection)|攻撃者が目標に関心のあるデータを収集しようとしている。|
|C&C（Command and Control）|攻撃者が侵害されたシステムと通信して制御しようとしている。|
|持ち出し(Exfiltration)|攻撃者がデータを盗もうとしている。|
|影響(Impact)|攻撃者がシステムとデータを操作、中断、または破壊しようとしている。|


[KQL クイック リファレンス](https://docs.microsoft.com/ja-jp/azure/data-explorer/kql-quick-reference)

## 1.3. [Microsoft Defender for 365 を使用してリスクを修復する](https://docs.microsoft.com/ja-jp/learn/modules/mitigate-incidents-microsoft-365-defender/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Defender for Office 365セキュリティの概要](https://docs.microsoft.com/ja-jp/microsoft-365/security/office-365-security/overview?view=o365-worldwide)

[Office365のAIRの全体的な流れ](https://docs.microsoft.com/ja-jp/microsoft-365/security/office-365-security/office-365-air?view=o365-worldwide)

## 1.4. [Microsoft Defender for Identity](https://docs.microsoft.com/ja-jp/learn/modules/m365-threat-safeguard/?wt.mc_id=esi_m2l_content_wwl)

[権限昇格攻撃と防御に関する解説](https://bs-square.jp/blog/index.php/2021/04/06/privilege-escalation-attack-defense-explained/)
## 1.5. [Azure AD Identity Protection](https://docs.microsoft.com/ja-jp/learn/modules/protect-identities-with-aad-idp/?wt.mc_id=esi_m2l_content_wwl)

[リスクとは](https://docs.microsoft.com/ja-jp/azure/active-directory/identity-protection/concept-identity-protection-risks)

## 1.6. [Microsoft Defender for Cloud Apps](https://docs.microsoft.com/ja-jp/learn/modules/microsoft-cloud-app-security/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Defender for Cloud Apps のドキュメント](https://docs.microsoft.com/ja-jp/defender-cloud-apps/)

[Microsoft Defender for Cloud Apps のアプリの条件付きアクセス制御を使用してアプリを保護する](https://docs.microsoft.com/ja-jp/defender-cloud-apps/proxy-intro-aad)

 アクセス ポリシーとセッション ポリシーを使用すると、次のことができます。

|内容|説明|
|:----|:----|
|データ窃盗を防ぐ|たとえばアンマネージド デバイスなどで、機密性の高いドキュメントのダウンロード、切り取り、コピー、および印刷をブロックできます。|
|認証コンテキストを要求する|セッションで機密性の高いアクションが発生したときに、Azure AD の条件付きアクセス ポリシーを再評価できます。 たとえば、機密性の高いファイルのダウンロード時に多要素認証を要求します。|
|ダウンロードを保護する|機密性の高いドキュメントのダウンロードをブロックするのではなく、ドキュメントにラベルを付け、Azure Information Protection で保護されるように要求することができます。 このアクションにより、危険を及ぼす可能性のあるセッションにおいて確実にドキュメントが保護され、ユーザー アクセスが制限されます。|
|ラベルのないファイルのアップロードを禁止する|機密性の高いファイルがアップロード、配布、および他のユーザーに使用される前に、ファイルに適切なラベルと保護が設定されるようにすることが重要です。 機密性の高い内容が含まれるラベルのないファイルが、その内容をユーザーが分類するまで、アップロードされないようにすることができます。|
|マルウェアの可能性をブロックする|悪意のある可能性のあるファイルのアップロードをブロックすることで、環境をマルウェアから保護することができます。 アップロードまたはダウンロードされるファイルを、Microsoft 脅威インテリジェンスに対してスキャンし、すぐにブロックすることができます。|
|ユーザー セッションのコンプライアンスを監視する|リスクの高いユーザーをアプリへのサインイン時に監視し、そのアクションをセッション内からログに記録します。 ユーザーの動作を調査して分析し、将来どこで、どのような条件においてセッション ポリシーを適用する必要があるかを理解することができます。|
|[アクセスのブロック]|複数のリスク要因に応じて、特定のアプリとユーザーのアクセスを細かくブロックできます。 たとえば、デバイス管理の形式としてクライアント証明書を使用している場合に、ブロックできます。|
|カスタム アクティビティをブロックする|Microsoft Teams や Slack といったアプリで機密性の高いコンテンツを含むメッセージを送信する場合のように、アプリによってはリスクを伴う固有のシナリオがあります。 このようなシナリオでは、メッセージで機密性の高いコンテンツをスキャンし、リアルタイムでブロックできます。|

**セッション制御の仕組み**

アプリの条件付きアクセス制御でセッション ポリシーを作成すると、アプリに直接ではなく、リバース プロキシ経由でユーザーをリダイレクトすることで、ユーザー セッションを制御できます。 その後、ユーザーの要求と応答は、アプリと直接ではなく、Cloud App Security を通して行われます。

セッションがプロキシによって保護されていると、関連するすべての URL と Cookie が Cloud App Security によって置き換えられます。 たとえば、ドメインが myapp.com で終わるリンクが含まれるページがアプリから返される場合、次のように、リンクのドメインには *.mcas.ms のようなサフィックスが付けられます。

|アプリの URL|置き換えられた URL|
|:----|:----|
|myapp.com|myapp.com.mcas.ms|

[Azure Information Protection とは](https://docs.microsoft.com/ja-jp/azure/information-protection/what-is-information-protection)

[Microsoft 365 の Microsoft Information Protection](https://docs.microsoft.com/ja-jp/microsoft-365/compliance/information-protection?view=o365-worldwide)

[Windows 情報保護 (WIP) を使用した企業データの保護](https://docs.microsoft.com/ja-jp/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip)

**Microsoft Information Protection** は、以下の４つのソリューションの総称です。それぞれが組み合わさって動作します。
- Azure Information Protection (AIP)
- Microsoft 365 Information Protection(MIP)
- Microsoft Defender for Cloud Apps
- Windows 情報保護

[秘密度ラベルの詳細](https://docs.microsoft.com/ja-jp/microsoft-365/compliance/sensitivity-labels?view=o365-worldwide)

## 1.7. [データ損失防止アラートへの対応](https://docs.microsoft.com/ja-jp/learn/modules/respond-to-data-loss-prevention-alerts-microsoft-365/?wt.mc_id=esi_m2l_content_wwl)

DLP のファイル ポリシー アラートに対処する場合でも、アラートの一覧にはさまざまな種類のアラートが表示されます。 DLP 以外のこれらのアラートからもセキュリティ インシデントに関する分析情報が得られる可能性があるため、さまざまなアラートの種類を理解しておくことが重要です。

下表にトリガーされることがあるアラートの種別を一覧し、推奨される解決方法を示します。

|アラートの種類|説明|推奨される解決策|
|:----|:----|:----|
|アクティブなポリシー違反|この種のアラートは自分が作成したポリシーの結果です。|この種のアラートを一括処理するには、ポリシーセンターで対処して軽減するようにお勧めします。フィルターを増やし、木目細かい制御をもっと適用して、多発するエンティティを除外するようにポリシーを微調整します。ポリシーが精確であれば、アラートは正当であり、この種の違反は直ちに停止すべきであるため、ポリシーに自動修復を追加するよう配慮しましょう。|
|ファイル ポリシーの違反|この種のアラートは自分が作成したポリシーの結果です。|この種のアラートを一括処理するには、ポリシーセンターで対処して軽減するようにお勧めします。フィルターを増やし、木目細かい制御をもっと適用して、多発するエンティティを除外するようにポリシーを微調整します。フィルターを増やし、木目細かい制御をもっと適用して、多発するエンティティを除外するようにポリシーを微調整します。|
|侵害されたアカウント|侵害されたアカウントを CloudApp Security が検出するとこの手のアラートが出力されます。これは、承認されていない方法でアカウントが使用された可能性が高いことを意味します。|このアカウントのユーザーと連絡が取れ、パスワードを本人が変更するまではアカウントを一旦停止するとよいでしょう。|
|使用されていないアカウント| 接続されているクラウドアプリの一つが 60 日以内に使用されなかったときこのアラートが出力されます。|ユーザーとユーザーの管理者に連絡して、アカウントがまだアクティブであるかどうかを確認します。使用されない場合、ユーザーを停止してそのアプリのライセンスを終了します。|
|新しい管理者ユーザー|接続されているアプリのための特権アカウントで生じた変更についてアラートします。|ユーザーに対して、新しい管理者のアクセス許可が必要であることを確認します。特権があるはずがなければ、侵害への暴露を削減するため管理者特権を取り消した方がよいでしょう。|
|新しい管理者の場所|接続されているアプリのための特権アカウントで生じた変更についてアラートします。|この異常な場所からのサインインが正当であることを確認してください。正当なものでなければ、管理者アクセス許可を取り消すかアカウントを一時停止して侵害への暴露を減らすことをお勧めします。|
|新しい場所|新しい場所から接続されているアプリに接続されていることについてを伝えるアラートであり、国/地域当たり一回のみ出力されます。|特定ユーザーのアクティビティを調査してください。|
|新たに発見されたサービス|このアラートはシャドウ ITについてのアラートです。Cloud Discovery が新たなアプリを検出しました。|アプリカタログに基づいてサービスのリスクを評価してください。|
|疑わしいアクティビティ|このアラートにより、組織内の予期されるアクティビティまたはユーザーとは一致しない異常なアクティビティが検出されたことが通知されます。|動作を調査してユーザー本人に確認します。この種のアラートは、環境について詳しく学び、これらのアラートを基に新しいポリシーを作成するのに最適な場所です。例えば、接続されているアプリのいずれかへあるユーザーが突如として大量のデータをアップロードしている場合、こうした異常な動作を統制するためのルールを設定することができます。|
|パーソナルアカウントの使用|このアラートにより、接続されているアプリのリソースに新しい個人用アカウントがアクセスできることが通知されます。|外部アカウントでのユーザーのコラボを削除します。|

## 1.8. 1.8 [Microsoft 365 で insider リスクを管理する](https://docs.microsoft.com/ja-jp/learn/modules/m365-compliance-insider-manage-insider-risk/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft 365 のインサイダー リスク管理について](https://docs.microsoft.com/ja-jp/microsoft-365/compliance/insider-risk-management?view=o365-worldwide)
# 2. モジュール02

## 2.1. [Microsoft Defender for Endpoint を使用して脅威から保護する](https://docs.microsoft.com/ja-jp/learn/modules/m365-security-threat-protect/?wt.mc_id=esi_m2l_content_wwl)

## 2.2. [Microsoft Defender for Endpoint の環境をデプロイする](https://docs.microsoft.com/ja-jp/learn/modules/deploy-microsoft-defender-for-endpoints-environment/?wt.mc_id=esi_m2l_content_wwl)

[基本的なアクセス許可を使用してポータルにアクセスする](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/basic-permissions?view=o365-worldwide)

MDEには、フルアクセスと読み取り専用アクセス権があります。それぞれできることは以下の通り。

|MDE Role|AAD Role|説明|
|:----|:----|:----|
|フルアクセス|・グローバル管理者</BR>・セキュリティ管理者|・ログイン、すべてのシステム情報の表示、アラートの解決、詳細な分析のためのファイルの送信、オンボーディング パッケージのダウンロードを行うことができます。|
|読み取り専用アクセス|・セキュリティ閲覧者|・読み取り専用アクセス権を持つユーザーは、ログイン、すべての通知、および関連情報を表示できます。</BR>・アラートの状態を変更したり、詳細な分析のためにファイルを送信したり、状態の変更操作を実行したりできない。|


[Linux 用 Microsoft Defender for Endpoint を手動で展開する](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/linux-install-manually?view=o365-worldwide#ubuntu-and-debian-systems)

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

[役割ベースのアクセス制御を使用してポータル アクセスを管理する](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/rbac?view=o365-worldwide)

大規模な企業のセキュリティチームでは、通常、階層ベースのセキュリティモデルを採用して、セキュリティポータルへのアクセス権の割り当てを行います。一般的な階層では3階層あります。

|レイヤー|役割|説明|
|:----|:----|:----|
|レイヤー1|ローカルセキュリティ運用チーム|ローカルに含まれるアラートをトリアージして調査し、アクティブな修復が必要な場合は、レイヤー2へエスカレーションする|
|レイヤー2|地域のセキュリティ運用チーム|地域すべてのデバイスを表示して、修復アクションを実行する|
|レイヤー3|グローバルセキュリティ運用チーム|セキュリティ専門家を入れ、ポータルからすべてのアクションを表示して実行する権限を持つ|

[ライブ応答を使用してデバイス上のエンティティを調査する](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/live-response?view=o365-worldwide)

**基本コマンド一覧**

|コマンド|説明|Windowsおよび Windows サーバー|macOS|Linux|
|:----|:----|:----|:----|:----|
|cd|現在のディレクトリを変更します。|Y|Y|Y|
|cls|コンソール画面をクリアします。|Y|Y|Y|
|connect|デバイスへのライブ応答セッションを開始します。|Y|Y|Y|
|connections|すべてのアクティブな接続を表示します。|Y|N|N|
|dir|ディレクトリ内のファイルとサブディレクトリの一覧を表示します。|Y|Y|Y|
|drivers|デバイスにインストールされているすべてのドライバーを表示します。|Y|N|N|
|fg <command ID>|指定したジョブをフォアグラウンドのフォアグラウンドに配置し、現在のジョブに設定します。 メモ: fg は、PID ではなく、ジョブから使用できる 'コマンド ID' を取得します。|Y|Y|Y|
|fileinfo|ファイルに関する情報を取得します。|Y|Y|Y|
|findfile|デバイス上の特定の名前でファイルを検索します。|Y|Y|Y|
|getfile <file_path>|ファイルをダウンロードします。|Y|Y|Y|
|help|ライブ応答コマンドのヘルプ情報を提供します。|Y|Y|Y|
|jobs|現在実行中のジョブ、その ID、状態を表示します。|Y|Y|Y|
|persistence|デバイス上のすべての既知の永続化メソッドを表示します。|Y|N|N|
|processes|デバイスで実行しているすべてのプロセスを表示します。|Y|Y|Y|
|registry|レジストリ値を表示します。|Y|N|N|
|scheduledtasks|デバイス上のすべてのスケジュールされたタスクを表示します。|Y|N|N|
|services|デバイス上のすべてのサービスを表示します。|Y|N|N|
|trace|ターミナルのログ モードをデバッグに設定します。|Y|Y|Y|

**高度なコマンド一覧**

|コマンド|説明|Windowsおよび Windows サーバー|macOS|Linux|
|:----|:----|:----|:----|:----|
|analyze|さまざまな解析エンジンを使用してエンティティを分析し、判定に達します。|Y|N|N|
|collect|コンピューターからフォレンジック パッケージを収集する|N|Y|Y|
|isolate|Defender for Endpoint サービスへの接続を維持しながら、ネットワークからデバイスを切断します|N|Y|N|
|release|ネットワーク分離からデバイスを解放する|N|Y|N|
|run|デバイス上のライブラリからPowerShell スクリプトを実行します。|Y|Y|Y|
|library|ライブ応答ライブラリにアップロードされたファイルを一覧表示します。|Y|Y|Y|
|putfile|ライブラリからデバイスにファイルを置く。ファイルは作業フォルダーに保存され、デバイスが既定で再起動すると削除されます。|Y|Y|Y|
|remediate|デバイス上のエンティティを修復します。 修復アクションは、エンティティの種類によって異なります</BR>: ファイル</BR>: プロセスの削除</BR>: 停止、イメージ ファイルのサービス削除</BR>: 停止、イメージ ファイルのレジストリ エントリ削除</BR>: スケジュールされたタスクの削除</BR>: スタートアップ フォルダー項目の削除</BR>: ファイルの削除</BR>注意: このコマンドには前提条件のコマンドがあります。 -auto コマンドを修復と組み合わせて使用して、前提条件のコマンドを自動的に実行できます。|Y|Y|Y|
|scan|Defender for Endpoint サービスへの接続を維持しながら、ネットワークからデバイスを切断する|N|Y|Y|
|undo|修復されたエンティティを復元します。|Y|Y|Y|

[デバイス グループの作成と管理](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/machine-groups?view=o365-worldwide)

## 2.3. [Windows 10 のセキュリティ強化の実施](https://docs.microsoft.com/ja-jp/learn/modules/implement-windows-10-security-enhancements-with-microsoft-defender-for-endpoint/?wt.mc_id=esi_m2l_content_wwl)

[攻撃面の減少ルール](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide)

[クラウド保護を有効にする必要Microsoft Defender ウイルス対策](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/why-cloud-protection-should-be-on-mdav?view=o365-worldwide)

[攻撃面の減少ルールを有効にする](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/enable-attack-surface-reduction?view=o365-worldwide)

Windows には攻撃面の減少(Attack surface reduction)ルールが用意されているので、このルールを構成することでセキュリティ侵害リスクを削減できます。

ASR(Attack surface reduction) は以下のツールから設定可能です。
- Microsoft Intune
- モバイル デバイス管理 (MDM)
- Microsoft Endpoint Configuration Manager
- グループ ポリシー
- PowerShell

各 ASR(Attack surface reduction) ルールには、次の 4 つの設定のいずれかを含む。
- 構成されていません
  - ASR ルールを無効にする
- ブロック
  - ASR ルールを有効にする
- 監査
  - ASR ルールが有効な場合に組織に与える影響を評価する
- 警告
  - ASR ルールを有効にするが、エンド ユーザーがブロックをバイパスできる

## 2.4. [Microsoft Defender for Endpoint でアラートとインシデントを管理する](https://docs.microsoft.com/ja-jp/learn/modules/manage-alerts-incidents-microsoft-defender-for-endpoints/?wt.mc_id=esi_m2l_content_wwl)

**用語説明**

|用語|説明|
|:----|:----|
|デバイス|各エンドポイントのこと|
|証拠|アカウント、プロセス、ネットワーク情報などのDefender for Endpointが収集した成果物に関する情報のこと|
|アラート|検出ルールに合致したアクティビティが見つかった場合に、アラートが作成されます|
|インシデント|生成されたアラートに基づいて、インシデントにグループ化されま|
|調査|Defender for Endpoint では自動調査が実行されます|
|インシデントグラフ|関連するサイバーセキュリティの脅威を視覚化したもの|

[MITRE ATT&CK](https://www.intellilink.co.jp/article/column/attack-mitre-sec01.html)
## 2.5. [デバイス調査の実行](https://docs.microsoft.com/ja-jp/learn/modules/perform-device-investigations-microsoft-defender-for-endpoints/?wt.mc_id=esi_m2l_content_wwl)

[フィードバック ループのブロック](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/feedback-loop-blocking?view=o365-worldwide)

## 2.6. [デバイス上でのアクションの実行](https://docs.microsoft.com/ja-jp/learn/modules/perform-actions-device-microsoft-defender-for-endpoint/?wt.mc_id=esi_m2l_content_wwl)

[自動調査の概要](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/automated-investigations?view=o365-worldwide)

自動修復のレベルには以下がある。

|設定|説明|
|:----|:----|
|自動応答なし|デバイスは調査されません。|
|すべてのフォルダーを半承認|デバイスは、検出システムからアラートを受信したときに自動的に調査されますが、修復処理を実行するには承認が必要です。|
|一時フォルダー以外への半承認|デバイスは、検出システムからアラートを受信したときに自動的に調査され、一時およびダウンロード ディレクトリ内で自動的に修復されます。他のすべての修復処理には承認が必要です。|
|コアフォルダーへの半承認|デバイスは、検出システムからアラートを受信したときに自動的に調査され、コア システム ディレクトリ内で特定されたものを除いて修復されます。コア システム ディレクトリに対する脅威の修復処理には承認が必要です。|
|**完全 - 自動的な脅威の修正（推奨）**|デバイスは、ユーザーによる操作を必要とせずに、MDE によって自動的に調査および修復されます。|

[ライブ応答を使用してデバイス上のエンティティを調査する](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/live-response?view=o365-worldwide)

## 2.7. [証拠とエンティティ調査の実行](https://docs.microsoft.com/ja-jp/learn/modules/perform-evidence-entities-investigations-microsoft-defender-for-endpoint/?wt.mc_id=esi_m2l_content_wwl)

## 2.8. [自動化を構成および管理する](https://docs.microsoft.com/ja-jp/learn/modules/configure-manage-automation-microsoft-defender-for-endpoint/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Defender ウイルス対策でクラウド保護をオンにする](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/enable-cloud-protection-microsoft-defender-antivirus?view=o365-worldwide)

## 2.9. [アラートと検出の設定](https://docs.microsoft.com/ja-jp/learn/modules/configure-settings-for-alerts-detections-microsoft-defender-for-endpoint/?wt.mc_id=esi_m2l_content_wwl)

[Defender for Endpoint で高度な機能を構成する](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/advanced-features?view=o365-worldwide)

[ネットワークを保護とは](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/network-protection?view=o365-worldwide)

[ネットワーク保護の有効化](https://docs.microsoft.com/ja-jp/microsoft-365/security/defender-endpoint/enable-network-protection?view=o365-worldwide)

## 2.10. [脅威と脆弱性の管理を活用する](https://docs.microsoft.com/ja-jp/learn/modules/use-threat-vulnerability-management-microsoft-defender-for-endpoint/2-understand-threat-vulnerability-management)

# 3. モジュール03

## 3.1. [Microsoft Defender for Cloud を使用してクラウドワークロード保護を計画する](https://docs.microsoft.com/ja-jp/learn/modules/what-is-azure-defender/?wt.mc_id=esi_m2l_content_wwl)

## 3.2. [Microsoft Defender for Cloud をのクラウドワークロード保護について説明する](https://docs.microsoft.com/ja-jp/learn/modules/understand-azure-defender-cloud-workload-protection/?wt.mc_id=esi_m2l_content_wwl)

## 3.3. [Azure 資産を Microsoft Defender for Cloud に接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-azure-assets-to-azure-defender/?wt.mc_id=esi_m2l_content_wwl)

[Windows 用の Log Analytics 仮想マシン拡張機能](https://docs.microsoft.com/ja-jp/azure/virtual-machines/extensions/oms-windows?azure-portal=true)

[Azure Arc 対応サーバー](https://docs.microsoft.com/ja-jp/azure/azure-arc/servers/overview)

## 3.4. [Azure 以外の資産を Microsoft Defender for Cloud に接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-non-azure-machines-to-azure-defender/?wt.mc_id=esi_m2l_content_wwl)

## 3.5. [Microsoft Defender for Cloud を使用してセキュリティアラートを修復する](https://docs.microsoft.com/ja-jp/learn/modules/remediate-azure-defender-security-alerts/?wt.mc_id=esi_m2l_content_wwl)
# 4. モジュール04
## 4.1. [Microsoft Sentinel の KQL ステートメントの構築](https://docs.microsoft.com/ja-jp/learn/modules/construct-kusto-query-language-statements/?wt.mc_id=esi_m2l_content_wwl)

[KQL クイック リファレンス](https://docs.microsoft.com/ja-jp/azure/data-explorer/kql-quick-reference)

[Windows Event ID 4624](https://www.manageengine.com/products/active-directory-audit/kb/windows-security-log-event-id-4624.html)

[監視するイベント](https://docs.microsoft.com/ja-jp/windows-server/identity/ad-ds/plan/appendix-l--events-to-monitor)

[Kusto クエリのサンプル](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/samples?pivots=azuremonitor)

[order 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/orderoperator)

[project-away 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/projectawayoperator)

[project-rename 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/projectrenameoperator)

[project-reorder 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/projectreorderoperator)
## 4.2. [KQL を使用してクエリ結果を分析する](https://docs.microsoft.com/ja-jp/learn/modules/analyze-results-kusto-query-language/?wt.mc_id=esi_m2l_content_wwl)

[arg_max() (集計関数)](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/arg-max-aggfunction)

## 4.3. [KQL を使用して複数のテーブル用のステートメントを作成する](https://docs.microsoft.com/ja-jp/learn/modules/build-multi-table-statements-kusto-query-language/?wt.mc_id=esi_m2l_content_wwl)

[union 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/unionoperator?pivots=azuremonitor)

[join 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/joinoperator?pivots=azuremonitor)
## 4.4. K[usto クエリ言語を使用して Microsoft Sentinel でデータを操作する](https://docs.microsoft.com/ja-jp/learn/modules/work-with-data-kusto-query-language/?wt.mc_id=esi_m2l_content_wwl)

[extract()](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/extractfunction)

[parse 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/parseoperator)

[mv-expand 演算子](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/mvexpandoperator)

[strcat()](https://docs.microsoft.com/ja-jp/azure/data-explorer/kusto/query/strcatfunction)

# 5. モジュール05

## 5.1. [Microsoft Sentinel の概要](https://docs.microsoft.com/ja-jp/learn/modules/intro-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[ログのリテンション期間（保持期間）](https://cloudsteady.jp/post/41235/)

[Microsoft Sentinel の価格](https://azure.microsoft.com/ja-jp/pricing/details/azure-sentinel/#purchase-options)

## 5.2. [Microsoft Sentinel ワークスペースの作成と管理](https://docs.microsoft.com/ja-jp/learn/modules/create-manage-azure-sentinel-workspaces/?wt.mc_id=esi_m2l_content_wwl)

[Azure Lighthouse とは](https://docs.microsoft.com/ja-jp/azure/lighthouse/overview)

[Microsoft Sentinel のアクセス許可](https://docs.microsoft.com/ja-jp/azure/sentinel/roles)

Microsoft Sentinel のすべての組み込みロールでは、Microsoft Sentinel ワークスペース内のデータに対して読み取りアクセス権が付与されます。

- 閲覧者</BR>
データ、インシデント、ブック、その他の Microsoft Sentinel リソースをレビューできます

- レスポンダー</BR>
閲覧者ロールのすべてのアクセス許可があります。さらに、インシデントを割り当てたり、終了したりして、インシデントを管理できます

- 共同作成者</BR>
閲覧者ロールとレスポンダーロールのすべてのアクセスが許可されています。また、ブック、分析ルール、その他の Microsoft Sentinel リソースを作成および編集することもできます。お客様のテナントに Microsoft Sentinel をデプロイするには、Microsoft Sentinel ワークスペースがデプロイされているサブスクリプションへの共同作成者としてのアクセス許可が必要です。

- Automation 共同作成者</BR>
プレイブックに自動化ルールを追加することを **Microsoft Sentinel に許可**します。 これはユーザー アカウント用ではありません。

**追加のロールに関して**

- プレイブックを使用して脅威への対応を自動化する</BR>
プレイブックはSentinelとは別のリソースなので、 **Logic App 共同作成者ロール**が必要。
プレイブックを使用するための明示的なアクセス許可を割り当てることができます。

- データソースへの接続</BR>
データ コネクタ を追加するには、**Microsoft Sentinel ワークスペースへの書き込みアクセス許可**をそのユーザーに割り当てる必要があります。 また、関連するコネクタのページで示されている、各コネクタに必要な追加のアクセス許可を確認してください。

- インシデントを割り当てる**ゲスト** ユーザー</BR>
ゲスト ユーザーによるインシデント割り当てを可能にする必要がある場合、ユーザーには、**Microsoft Sentinel レスポンダー ロール**に加えて、**ディレクトリ閲覧者のロール**も割り当てられている必要があります。 このロールは、Azure ロール ではなく、Azure Active Directory ロールであり、通常の (非ゲスト) ユーザーには既定でこのロールが割り当てられていることに注意してください。

- ブックの作成と削除</BR>
ブックを作成および削除するには、ユーザーには**監視共同作成者**の Azure Monitor ロールも割り当てられている必要があります。 このロールは、作成と削除専用であり、ブックの "使用" には必要ありません。


|Role|プレイブックを作成して実行する|分析ルールとその他の Microsoft Sentinel リソースを作成および編集する *|インシデントを管理する (無視、割り当てなど)|データ、インシデント、ブックなどのMicrosoft Sentinel リソースを表示する|
|:----|:----|:----|:----|:----|
|Microsoft Sentinel 閲覧者|--|--|--|✓|
|Microsoft Sentinel レスポンダー|--|--|✓|✓|
|Microsoft Sentinel 共同作成者|--|✓|✓|✓|
|Azure Sentinel 共同作成者 + ロジック アプリの共同作成者|✓|✓|✓|✓|

[エンタープライズ シナリオにおける Azure Lighthouse](https://docs.microsoft.com/ja-jp/azure/lighthouse/concepts/enterprise)

## 5.3. [Microsoft Sentinel のログのクエリを実行する](https://docs.microsoft.com/ja-jp/learn/modules/query-logs-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

アラートとインシデントを管理する主なテーブルは、SecurityAlert と SecurityIncident です。

|テーブル|説明|
|:----|:----|
|SecurityAlert|Sentinel の分析規則から生成されたアラートを含みます。 また、Sentinel データ コネクタから直接作成されたアラートを含むこともあります|
|SecurityIncident|アラートによりインシデントが生成される可能性があります。 インシデントはアラートに関連しています。|
|ThreatIntelligenceIndictor|ファイル ハッシュ、IP アドレス、ドメインなどユーザーが作成した、またはデータ コネクタに取り込まれたインジケーターを含みます|
|Watchlist|Microsoft Sentinel ウォッチリストはインポートされたデータを含みます。|

Sentinel からデータ コネクタのデータを取り込む場合に最もよく使用されるテーブルを次の表に示します。

|テーブル|説明|
|:----|:----|
|AzureActivity|Azure アクティビティ ログにより、Azure で発生したサブスクリプションレベルまたは管理グループレベルのイベントを把握できます。|
|AzureDiagnostics|Azure 診断モードを使用する Azure サービスのリソース ログを保存します。リソース ログにAzure リソースの内部操作に関して記述されています。|
|AuditLogs|Azure Active Directory の監査ログ。ユーザーとグループの管理、マネージド アプリケーション、ディレクトリ アクティビティに関するシステム アクティビティ情報。|
|CommonSecurityLog|Common Event Format (CEF) を使用した Syslog メッセージ。|
|McasShadowItReporting|Microsoft Defender for Cloud Apps のログ|
|OfficeActivity|Microsoft Sentinel によって収集された Office 365 テナントの監査ログ。Exchange、SharePoint、および Teams のログを含みます。|
|SecurityEvent|Microsoft Defender for Cloud または Microsoft Sentinel によって Windows マシンから収集されたセキュリティ イベント|
|SigninLogs|Azure Activity Directory のサインイン ログ|
|Syslog|Log Analytics エージェントを使用した Linux コンピューター上の Syslog イベント。|
|Event|Windows ホストから収集された Sysmon イベント。|
|WindowsFirewall|Windows ファイアウォール イベント|

Microsoft Defender for Endpoint テーブル

|テーブル|説明|
|:----|:----|
|DeviceEvents|その他のデバイス イベント テーブルには、Microsoft Defender Antivirus や悪用に対する保護などのセキュリティ制御によってトリガーされるイベントを含む、さまざまなイベントの種類に関する情報が含まれています。|
|DeviceFileEvents|このテーブルには、ファイルの作成、変更、およびその他のファイル システム イベントに関する情報が含まれています。|
|DeviceImageLoadEvents|このテーブルには、DLL の読み込みイベントに関する情報が含まれています。|
|DeviceInfo|このテーブルには、OS バージョン、アクティブ ユーザー、コンピューター名など、組織内のデバイスに関する情報が含まれています。|
|DeviceLogonEvents|このテーブルには、ユーザーのログオンおよびその他の認証イベントに関する情報が含まれています。|
|DeviceNetworkEvents|このテーブルには、ネットワーク接続と関連イベントに関する情報が含まれています。|
|DeviceNetworkInfo|このテーブルには、ネットワーク アダプター、IP および MAC アドレス、接続されているネットワークまたはドメインなど、デバイスのネットワーク構成に関する情報が含まれています。|
|DeviceProcessEvents|このテーブルには、プロセスの作成と関連イベントに関する情報が含まれています。|
|DeviceRegistryEvents|このテーブルには、レジストリ エントリの作成と変更に関する情報が含まれています。|

## 5.4. [Microsoft Sentinel でウォッチリストを使用する](https://docs.microsoft.com/ja-jp/learn/modules/use-watchlists-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Sentinel ウォッチリストを使用する](https://docs.microsoft.com/ja-jp/azure/sentinel/watchlists)

[Microsoft Sentinel 組み込みウォッチリストのテンプレートのスキーマ](https://docs.microsoft.com/ja-jp/azure/sentinel/watchlist-schemas)

## 5.5. [Microsoft Sentinel の脅威インテリジェンスを利用する](https://docs.microsoft.com/ja-jp/learn/modules/utilize-threat-intelligence-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

# 6. モジュール06

## 6.1. [データコネクタを使用して Microsoft Sentinel にデータを接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-data-to-azure-sentinel-with-data-connectors/?wt.mc_id=esi_m2l_content_wwl)

[無料データ ソース](https://docs.microsoft.com/ja-jp/azure/sentinel/billing#free-data-sources)

[CEF および CommonSecurityLog フィールドのマッピング](https://docs.microsoft.com/ja-jp/azure/sentinel/cef-name-mapping)

[Syslog を使用して Linux ベースのソースからデータを収集する](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-syslog)

[Advanced SIEM Information Model (ASIM) パーサー](https://docs.microsoft.com/ja-jp/azure/sentinel/normalization-about-parsers)

[データの種類別のリテンション期間](https://docs.microsoft.com/ja-jp/azure/azure-monitor/logs/manage-cost-storage#retention-by-data-type)

## 6.2. [Microsoft サービスをMicrosoft Sentinel に接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-microsoft-services-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[OfficeActivity](https://docs.microsoft.com/ja-jp/azure/azure-monitor/reference/tables/officeactivity)

[Microsoft 365 のための Azure Sentinel - Office 365 や セキュリティサービスからどのログを収集していくか？](https://qiita.com/YoshiakiOi/items/8b4e6cbc334bd24ed469)

[Office 365 の監査ログを Azure Sentinel に格納する](https://qiita.com/YoshiakiOi/items/8fde7595042f0f281de8)

[Azure Active Directory の監査ログ](https://docs.microsoft.com/ja-jp/azure/active-directory/reports-monitoring/concept-audit-logs)

[Azure Active Directory のサインイン ログ](https://docs.microsoft.com/ja-jp/azure/active-directory/reports-monitoring/concept-sign-ins)

[Azure AD にデータが保存される期間](https://docs.microsoft.com/ja-jp/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data)

[Azure Active Directory (Azure AD) データを Microsoft Sentinel に接続する](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-azure-active-directory)

## 6.3. [Microsoft Defender を Microsoft Sentinel に接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-microsoft-defender-365-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

## 6.4. [Windows ホストを Microsoft Sentinel に接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-windows-hosts-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

## 6.5. [Microsoft Sentinel に Common Event Format のログを接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-common-event-format-logs-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[CommonSecurityLog](https://docs.microsoft.com/ja-jp/azure/azure-monitor/reference/tables/commonsecuritylog)

[Log Analytics エージェントの概要](https://docs.microsoft.com/ja-jp/azure/azure-monitor/agents/log-analytics-agent)

[ログ フォワーダーをデプロイして Syslog および CEF ログを Microsoft Sentinel に取り込む](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-log-forwarder?tabs=rsyslog)

## 6.6. [Microsoft Sentinel に Syslog データソースを接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-syslog-data-sources-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[Syslog を使用して Linux ベースのソースからデータを収集する](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-syslog)

[Log Analytics エージェントを使用して Syslog データ ソースを収集する](https://docs.microsoft.com/ja-jp/azure/azure-monitor/agents/data-sources-syslog)

syslogにおけるシステムログには **「Facility」と「Severity」**という考え方があります。Facilityとは、正確に言えば「ログの種別」のことであり、分かりやすくいえばメッセージの「出力元」のことです。ファシリティには以下の種類があり、ファシリティを使用することでメッセージの出力元に応じてログの出力先を制御できます。

|Facility|Facility Code|説明|
|:----|:----|:----|
|kern|0|カーネルメッセージ|
|user|1|ユーザーレベルメッセージ|
|mail|2|メールシステム|
|daemon|3|システムデーモン|
|auth|4|セキュリティ/認証メッセージ(最近のシステムでは、authprivが使用される)|
|syslog|5|syslogdによる内部メッセージ|
|lpr|6|Line Printerサブシステム|
|news|7|newsサブシステム|
|uucp|8|UUCPサブシステム|
|cron|9|cronデーモン|
|authpriv|10|セキュリティ/認証メッセージ(プライベート)|
|ftp|11|ftpデーモン|
|local0~local7|16~23|ローカル用に予約|

Severityとは、メッセージの優先度を表します。Severityはemergが最も高く、debugが最も低いことを意味します。指定したSeverityよりもレベルが高いものが全て記憶されるので、例えばcritを指定した場合、crit、alert、emergレベルのログが記録されます。特定のSeverityを指定したい場合、Severityの前に = をつけます。noneは例外指定したファシリティのログを除外する役割を持ちます。

|Severity|説明|
|:----|:----|
|emerg|emergency:パニックの状態でシステムは使用不可|
|alert|alert:緊急に対処が必要|
|crit|critical:緊急に対処が必要。alertより緊急度は低い|
|err|error:エラー発生|
|warning|warning:警告。対処しないとエラーが発生する可能性がある|
|notice|notice:通常では無いが、エラーでも無い|
|info|information:通常の稼働の情報|
|debug|debug:デバッグ情報|
|none|none:ログメッセージを記録しない|

## 6.7. [脅威インジケーターを Microsoft Sentinel に接続する](https://docs.microsoft.com/ja-jp/learn/modules/connect-threat-indicators-to-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Sentinel の脅威インテリジェンスについて](https://docs.microsoft.com/ja-jp/azure/sentinel/understand-threat-intelligence)

**脅威インテリジェンス（TI）共有規格**

- STIX(Structured Threat Information eXpression)
- TAXII(Trusted Automated eXchange of Indicator Information)

STIX と TAXII は、サイバー攻撃の予防と対策を強化するために考案された規格です。STIX は脅威インテリジェンスの内容を記述し、TAXII はこの情報をどのように伝達するかを規定します。従来の共有方法と違い、STIX と TAXII は機械による読み込みが可能なため、簡単に自動化できます。

**TIP ソリューション例**

MISP、Anomali ThreatStream、ThreatConnect、EclecticIQ Platform、ThreatQ Threat Intelligence Platform、Palo Alto Networks の MineMeld など

[Microsoft Azure Sentinel を STIX、TAXII 脅威インテリジェンス フィードに接続する](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-threat-intelligence-taxii)

[脅威インテリジェンス プラットフォームを Microsoft Sentinel に接続する](https://docs.microsoft.com/ja-jp/azure/sentinel/connect-threat-intelligence-tip)


# 7. モジュール07

## 7.1. [Microsoft Sentinel の分析を使用した脅威検出](https://docs.microsoft.com/ja-jp/learn/modules/analyze-data-in-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Sentinel でエンティティを使用してデータを分類および分析する](https://docs.microsoft.com/ja-jp/azure/sentinel/entities)

[オートメーション ルールにより Microsoft Sentinel でのインシデント処理を自動化する](https://docs.microsoft.com/ja-jp/azure/sentinel/automate-incident-handling-with-automation-rules)

## 7.2. [Microsoft Sentinel でのセキュリティ インシデント管理](https://docs.microsoft.com/ja-jp/learn/modules/incident-management-sentinel/?wt.mc_id=esi_m2l_content_wwl)
## 7.3. [Microsoft Sentinel プレイブックを使用した脅威対処](https://docs.microsoft.com/ja-jp/learn/modules/threat-response-sentinel-playbooks/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Sentinel によるハンティング中にデータを追跡する](https://docs.microsoft.com/ja-jp/azure/sentinel/bookmarks)

## 7.4. [Microsoft Sentinel でのエンティティの行動分析の使用](https://docs.microsoft.com/ja-jp/learn/modules/use-entity-behavior-analytics-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

## 7.5. [Microsoft Sentinel でのデータクエリ、視覚化、監視](https://docs.microsoft.com/ja-jp/learn/modules/query-data-sentinel/?wt.mc_id=esi_m2l_content_wwl)

# 8. モジュール08

## 8.1. [Microsoft Sentinel における脅威ハンティングの概念](https://docs.microsoft.com/ja-jp/learn/modules/what-is-threat-hunting-azure-sentinel/?wt.mc_id=esi_m2l_content_wwl)

## 8.2. [Microsoft Sentinel を使用した脅威ハンティング](https://docs.microsoft.com/ja-jp/learn/modules/hunt-threats-sentinel/?wt.mc_id=esi_m2l_content_wwl)

[Microsoft Sentinel でハンティング ライブストリームを使用して脅威を検出する](https://docs.microsoft.com/ja-jp/azure/sentinel/livestream)

## 8.3. [Microsoft Sentinel でノートブックを使用して脅威をハンティングする](https://docs.microsoft.com/ja-jp/learn/modules/perform-threat-hunting-sentinel-with-notebooks/?wt.mc_id=esi_m2l_content_wwl)

[Jupyter のノートブックを使用してセキュリティの脅威を検出する](https://docs.microsoft.com/ja-jp/azure/sentinel/notebooks)

