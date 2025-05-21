**SC-100 Microsoft サイバーセキュリティ エキスパート**
***

最終更新日 2025/05/20

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

SC-100のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境で提供されました。
> - このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

> [!IMPORTANT]
> - このラボではセキュリティに関連するAzureでの操作を体験することができますが、一部のラボではペアで行うことを想定しているものもありますので、単独では完結しないラボもあります。チャレンジする方は行ってみてください。

**リンク一覧およびメモ**

[SC-100のテキスト](https://learn.microsoft.com/ja-jp/training/courses/sc-100t00?wt.mc_id=esi_m2l_content_wwl#study-guide)

[SC-100 ケーススタディ](https://github.com/MicrosoftLearning/SC-100-Microsoft-Cybersecurity-Architect.ja-jp)

[Azure アーキテクチャ アイコン](https://docs.microsoft.com/ja-jp/azure/architecture/icons/)
  - ダウンロードしてご利用ください。

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

> [!NOTE]
> - トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
> - メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

***

**ケーススタディー(問題と検討例)**</BR></BR>
問題と検討例を参考にケーススタディーを確認することができます。ケーススタディーを自分で検討する場合は、上記リンクからケーススタディーを参照してください。

> [!IMPORTANT]
> この検討例はMicrosoftが推奨するものではなく、講師個人が検討したものです。（AIモデルChat-GTP4oで前提条件を学習して、内容を適時修正して作成しています）。

Day1:
- [ゼロトラストソリューションの設計](https://github.com/naonao71/note/blob/main/SC-100/module01a.md)
- [アーキテクチャのベストプラクティス](https://github.com/naonao71/note/blob/main/SC-100/module01b.md)
- [クラウド導入フレームワーク (CAF) に沿ったソリューションの設計](https://github.com/naonao71/note/blob/main/SC-100/module02.md)
- [MCRAとMCSBのベストプラクティスを使用したソリューションの設計](https://github.com/naonao71/note/blob/main/SC-100/module03.md)
- [ランサムウェア攻撃に対応する回復性戦略を設計する](https://github.com/naonao71/note/blob/main/SC-100/module04.md)

Day2:
- [規制コンプライアンスを評価する](https://github.com/naonao71/note/blob/main/SC-100/module05.md)
- [ID セキュリティ ソリューションを設計する](https://github.com/naonao71/note/blob/main/SC-100/module06.md)
- [セキュリティ オペレーションのためのソリューションを設計する](https://github.com/naonao71/note/blob/main/SC-100/module08.md)

Day3
- [アプリケーションをセキュリティで保護するためのソリューションを設計する](https://github.com/naonao71/note/blob/main/SC-100/module10.md)
- [組織のデータを守るセキュリティ対策ソリューションを設計する](https://github.com/naonao71/note/blob/main/SC-100/module11.md)

Day4
- [SaaS、PaaS、IaaS サービスをセキュリティで保護するための要件を指定する](https://github.com/naonao71/note/blob/main/SC-100/module12.md)
- [ハイブリッドとマルチクラウドの環境でのセキュリティ態勢管理のためのソリューションを設計する](https://github.com/naonao71/note/blob/main/SC-100/module13.md)
- [リモート アクセスとエンドポイント戦略を作成する](https://github.com/naonao71/note/blob/main/SC-100/module14.md)


***
**コンテンツ**


Day1
- [Module01: ゼロ トラストとベスト プラクティス フレームワークの概要](https://learn.microsoft.com/ja-jp/training/modules/introduction-zero-trust-best-practice-frameworks/)
- [Module02: クラウド導入フレームワーク (CAF) と Well-Architected フレームワーク (WAF) に沿ったセキュリティ ソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-align-cloud-adoption-framework-well-architected-framework/)
- [Module03: Microsoft Cybersecurity リファレンス アーキテクチャ (MCRA) および Microsoft クラウド セキュリティ ベンチマーク (MCSB) に沿ったソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-microsoft-cybersecurity-cloud-security-benchmark/)
- [Module04: Microsoft セキュリティ ベスト プラクティスに基づいて、ランサムウェアやその他の攻撃に対する回復性戦略を設計する](https://learn.microsoft.com/ja-jp/training/modules/design-resiliency-strategy-common-cyberthreats-like-ransomware/)
- [ケース スタディ: セキュリティのベスト プラクティスと優先順位に沿ったソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/case-study-design-solutions-security-best-practices-priorities/)

Day2
- [Module05: 規制コンプライアンスのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-regulatory-compliance/)
- [Module06: ID およびアクセス管理のソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-identity-access-management/)
- [Module07: 特権アクセスをセキュリティで保護するためのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-secure-privileged-access/)
- [Module08: セキュリティ オペレーションのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-security-operations/)
- [ケース スタディ: セキュリティ オペレーション、ID、コンプライアンス機能の設計](https://learn.microsoft.com/ja-jp/training/modules/case-study-design-security-operations-identity-compliance-capabilities/)

Day3
- [Module09: Microsoft 365 をセキュリティで保護するためのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-secure-microsoft-365/)
- [Module10: アプリケーションをセキュリティで保護するためのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-secure-applications/)
- [Module11: 組織のデータをセキュリティで保護するためのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-secure-organization-data/)
- [ケース スタディ: アプリケーションとデータのセキュリティ ソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/case-study-design-security-solutions-applications-data/)

Day4
- [Module12: SaaS、PaaS、IaaS サービスをセキュリティで保護するための要件を指定する](https://learn.microsoft.com/ja-jp/training/modules/specify-requirements-securing-saas-paas-iaas-services/)
- [Module13: ハイブリッドおよびマルチクラウド環境でのセキュリティ態勢管理のためのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-security-posture-management-hybrid-multicloud-environments/)
- [Module14: サーバーとクライアントのエンドポイントをセキュリティで保護するためのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-securing-server-client-endpoints/)
- [Module15: ネットワーク セキュリティのソリューションを設計する](https://learn.microsoft.com/ja-jp/training/modules/design-solutions-network-security/)
- [ケース スタディ: インフラストラクチャのセキュリティ ソリューションの設計](https://learn.microsoft.com/ja-jp/training/modules/case-study-design-security-solutions-infrastructure/)
