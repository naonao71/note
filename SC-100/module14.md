---
casestudy:
  title: 'ケース スタディ: リモート アクセスとエンドポイント戦略を作成する'
  module: 'Module 14: Design solutions for securing server and client endpoints'
---

このケース スタディ演習は、このモジュールで学習した内容に関連するいくつかの概念設計タスクの実行を経験できるように設計されています。

## ケース スタディ: リモート アクセスとエンドポイント戦略を作成する

Tailwind Traders は、架空のホームセンターです。 この会社は、世界中およびオンラインでホームセンターを運営しています。 Tailwind Traders 社の CISO は、Azure によって提供される機会を認識していますが、強力なセキュリティと堅牢なクラウド アーキテクチャが必要であることも理解しています。 強力なセキュリティと優れた参照アーキテクチャがないと、会社で Azure の環境とコストを管理するのが難しく、追跡と制御が困難になる可能性があります。 CISO は、セキュリティ標準が Azure によってどのように管理および適用されるのかを理解したいと考えています。

### 要件: リモート アクセス

新しい CIO は、リモート ワーカーがクラウド ワークロードで管理ポートを公開する必要なしにクラウド リソースに接続でき、リモート ブランチ オフィスが会社の本社と常に接続していられるようにしたいと考えています。

CISO は、現在の脅威の状況では、ほとんどの攻撃がエンドポイントをターゲットにしていることを理解しています。 すべてのエンドポイントを強化するための新しいセキュリティ ベースラインを確立し、これらのベースラインをクライアント全体にデプロイするためのシームレスなエクスペリエンスを提供する必要があります。 また、CISO は、SOC チームがエンドポイントについて調査を行い、攻撃の根本原因をより深く理解できるようにしたいと考えています。

---

## リモート アクセス 
- リモート ワーカーの接続に関する CIO のビジョンを実現にするには、どのソリューションを使用する必要がありますか?
- リモート ブランチにはどのソリューションを使用する必要がありますか?

### リモート ワーカーの接続に関する CIO のビジョンを実現するためのソリューション:  
- **VPN (仮想プライベートネットワーク)**: リモートワーカーが安全に企業のクラウドリソースにアクセスできるようにする。  
- **Zero Trust Network Access (ZTNA)**: ユーザーやデバイスを常に検証し、必要な権限のみを付与することで、セキュリティを強化する。
- **Azure Bastion**: 仮想ネットワーク上のVMに対してセキュアなアクセスを提供する。
- **クラウドベースのアイデンティティとアクセス管理 (IAM)**: ユーザーのアクセスを管理し、適切な権限を持つユーザーのみがリソースにアクセスできるようにする。  
  
### リモート ブランチに使用するソリューション:  
- **SD-WAN (Software-Defined Wide Area Network)**: 各支店を本社に安全に接続し、効率的なトラフィック管理を実現する。  
- **Azure Virtual WAN**: ネットワーク、セキュリティ、ルーティングのさまざまな機能をまとめて、1 つの運用インターフェイスを提供するネットワーク サービス。
  
---  
  
## エンドポイント戦略
- セキュリティ ベースラインをデプロイするには、どのツールを使用する必要がありますか?
- SOC チームがエンドポイントの調査を実行できるようにするには、どうすればよいですか?
  
#### セキュリティ ベースラインをデプロイするために必要なツール:  
- **Microsoft Intune**: エンドポイントの管理、ポリシーの適用、セキュリティベースラインのデプロイを行う。  
- **Microsoft Defender for Endpoint**: エンドポイントの脅威を監視し、リアルタイムで対応するためのツール。  
  
#### SOC チームがエンドポイントの調査を実行できるようにする方法:  
- **Microsoft Defender XDR**: セキュリティイベントを集約し、分析することで、SOCチームが迅速にインシデントを調査できる環境を提供する。  
- **フォレンジックツール**: インシデント発生時にエンドポイントのデータを収集し、詳細な分析を行うためのツールを提供する。  
  
これらのソリューションを組み合わせることで、Tailwind Traders はリモートアクセスとエンドポイントのセキュリティを強化し、CIO のビジョンを実現することができるでしょう。  