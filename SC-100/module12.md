---
casestudy:
  title: 'ケース スタディ: SaaS、PaaS、IaaS サービスをセキュリティで保護するための要件を指定する'
  module: 'Module 12: Specify requirements for securing SaaS PaaS and IaaS services'
---

このケース スタディ演習は、このモジュールで学習した内容に関連するいくつかの概念設計タスクの実行を経験できるように設計されています。

## ケース スタディ: SaaS、PaaS、IaaS サービスをセキュリティで保護するための要件を指定する

Tailwind Traders は、架空のホームセンターです。 この会社は、世界中およびオンラインでホームセンターを運営しています。 Tailwind Traders 社の CISO は、Azure によって提供される機会を認識していますが、強力なセキュリティと堅牢なクラウド アーキテクチャが必要であることも理解しています。 強力なセキュリティと優れた参照アーキテクチャがないと、会社で Azure の環境とコストを管理するのが難しく、追跡と制御が困難になる可能性があります。 CISO は、セキュリティ標準が Azure によってどのように管理および適用されるのかを理解したいと考えています。

## 必要条件

このビジョンを達成するために、CIO は新しい最高情報セキュリティ責任者 (CISO) を雇いました。 新しい CISO は、PaaS、IaaS、SaaS ワークロードをセキュリティで保護するための戦略の計画を開始し、この戦略の一環として、次のことが必要であることを立証しました。

-   VM とコンテナーのネイティブの脆弱性について評価することができ、Cosmos DB の脅威検出をサポートできるクラウド セキュリティ態勢管理プラットフォームを実装する
-   SQL データベースとストレージ アカウントでデータを分類およびラベル付けできる Azure ワークロード用のデータ分類システムを実装する
-   Microsoft 365 で SaaS ワークロードのセキュリティ ベースラインを実装する
-   IoT ワークロードのセキュリティ態勢管理と脅威検出をサポートする

---

## 次の場合、どのソリューションを使用すべきですか。
   - Azure でデータ分類とラベル付けを提供する
   - VM、コンテナー、Cosmos DB のクラウド セキュリティ態勢管理と脅威検出を提供する場合
  
### 1. データ分類とラベル付けの提供  
- **Microsoft Purview**:   
  - データを自動的に発見、分類、ラベル付けするためのデータガバナンスソリューション。  
  - SQL データベースやストレージアカウント内のデータを効果的に分類し、セキュリティポリシーに従った管理を可能にします。  
  
### 2. VM、コンテナー、Cosmos DB のクラウド セキュリティ態勢管理と脅威検出  
- **Microsoft Defender for Cloud**:   
  - Azure 環境全体のセキュリティ態勢を管理。  
  - VM、コンテナー、Cosmos DB に対する脅威検出機能を提供。  
  - 脆弱性の評価やセキュリティのベストプラクティスに基づく推奨事項を得ることができます。  

## IoT のクラウド セキュリティ態勢管理と脅威検出を提供するには、どのソリューションを使用する必要がありますか?

### 3. IoT のクラウド セキュリティ態勢管理と脅威検出  
- **Microsoft Defender for IoT(Microsoft Defender XDR)**:   
  - IoT デバイスとその通信のセキュリティを管理。  
  - 脅威検出を行い、IoT 環境のセキュリティを強化し、リスクを軽減します。  
  
これらのソリューションを組み合わせることで、Tailwind Traders のセキュリティ要件を効果的に満たすことができます。  
