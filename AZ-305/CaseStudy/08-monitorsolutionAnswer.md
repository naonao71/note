**リソースをログ記録して監視するソリューションを設計する**

![ソリューション例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/media/08-01.png)

### 設計案

- Application Insightsからブラウザーとウェブアプリからテレメトリを出力する.
- 正常性、パフォーマンス、使用状況のデータを収集し、開発者と管理者は、リアルタイムに使用状況の情報を確認する.
- Azure SQL Database はテレメトリをAzure Monitorに出力する.
- Azure Monitorで、SQL DBのメトリックとクォータを収集し、診断機能で状況を把握する.
- Log Analyticsで、ログとメトリックを保管および分析に利用する.
- ダッシュボード機能により、AppServiceおよびSQL DBの状況を統合的に確認する。
- 不具合発生前に対応できるアラートを設定しておく.

---

[https://learn.microsoft.com/ja-jp/azure/architecture/reference-architectures/app-service-web-app/app-monitoring](https://learn.microsoft.com/ja-jp/azure/architecture/reference-architectures/app-service-web-app/app-monitoring)