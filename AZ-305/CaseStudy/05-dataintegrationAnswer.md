**データ統合を設計する**

![ソリューション例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/media/05-01.png)

### 設計案

- Data FactoryまたはSynapse Analyticsによって、様々なデータ形式を様々なところから収集するパイプラインを開発する.
- Data FactoryとGitを連携させて収集パイプラインのバージョン管理を行う.
- 収集したデータは分析用に最適化されたData Lake Gen2に格納する.
- Synapse Sparkを使って機械学習のモデルを開発する.
- Power BIなどのレポーティングツールに最新のデータを定期的に出力するため、Synapse SQL Serverless Poolを利用する.

---

[https://learn.microsoft.com/ja-jp/azure/architecture/example-scenario/data/synapse-exploratory-data-analytics](https://learn.microsoft.com/ja-jp/azure/architecture/example-scenario/data/synapse-exploratory-data-analytics)