**Microsoft Defender for Cloud の規制コンプライアンス コントロールを使用して Azure のサービスとワークロードをセキュリティで保護する**
***

最終更新日 2024/08/23

**リンク一覧およびメモ**

 > リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

SC-5002 ラボトップ [日本語](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/tree/main/Instructions/Labs)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://learn.microsoft.com/ja-jp/training/paths/secure-azure-services-workloads-defender-cloud/)

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

- ローカルにダウンロードする

[SC-5002_補足資料Ver1.1](https://github.com/naonao71/note/blob/main/SC-5002/SC-5002_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.1.pdf)


***
モジュール
- [Defender for Cloud の規制コンプライアンス標準の詳細](https://learn.microsoft.com/ja-jp/training/modules/examine-defender-cloud-regulatory-compliance-standards/)
- [Azure サブスクリプションで Defender for Cloud を有効にする](https://learn.microsoft.com/ja-jp/training/modules/enable-defender-cloud-azure-subscription/)
- [Azure portal を使用してネットワーク セキュリティ グループでネットワーク トラフィックをフィルター処理する](https://learn.microsoft.com/ja-jp/training/modules/filter-network-traffic-network-security-group-using-azure-portal/)
- [Microsoft Defender for Cloud 用の Log Analytics ワークスペースを作成する](https://learn.microsoft.com/ja-jp/training/modules/create-log-analytics-workspace-microsoft-defender-cloud/)
- [Log Analytics エージェントを構成して Defender for Cloud のワークスペースと統合する](https://learn.microsoft.com/ja-jp/training/modules/configure-integrate-analytics-agent-defender-cloud/)
- [Just-In-Time 仮想マシン アクセスについて調べる](https://learn.microsoft.com/ja-jp/training/modules/just-in-time-access/)
- [Azure Key Vault のネットワーク設定を構成する](https://learn.microsoft.com/ja-jp/training/modules/configure-azure-key-vault-networking-settings/)
- [Azure portal を使用して Azure プライベート エンドポイントを使って Azure SQL サーバーに接続する](https://learn.microsoft.com/ja-jp/training/modules/connect-azure-server-private-endpoint-using-azure-portal/)



***
ラボ環境は英語で提供されています。そのまま行うこともできますが、ローカル環境からブラウザーを使用してラボを行うことができます。以下に日本語での指示をリンクします。

- [Azure サブスクリプションで Defender for Cloud を有効にする](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_01_Enable%20Defender%20for%20Cloud%20on%20your%20Azure%20subscription.md)
- [仮想ネットワーク インフラストラクチャを作成する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_01_Create%20a%20virtual%20network%20infrastructure.md)
  - すでに**azure-rg-1**リソースグループが作成されている場合は、そのリソースグループを使用します。
- [ワークスペースを作成する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_02_Create%20a%20Log%20Analytics%20workspace%20for%20Microsoft%20Defender%20for%20Cloud.md)
- [Log Analytics エージェントを構成して Defender for Cloud のワークスペースと統合する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_04_Configure%20and%20integrate%20a%20Log%20Analytics%20agent%20and%20workspace%20in%20Defender%20for%20Cloud.md)
  - **この演習はすでに非推奨になります。セキュリティイベントストレージがグレーアプトして選択できません。よって設定内容を確認するのみとなります。**
- [VM で Just-In-Time アクセスを有効にする](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_03b_Configure%20just-in-time%20(JIT)%20VM%20access%20in%20Defender%20for%20Cloud.md)
- [Azure Key Vault のネットワーク設定を構成する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_06a_Configure%20Azure%20Key%20Vault%20networking%20settings.md)
  - **キーコンテナー名は「AZAPLKeyVault」の後ろにランダムな4桁の数字を入力してください**
- [論理的な削除と消去保護キー コンテナー リカバリを実行する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_06b_Perform%20soft-delete%20and%20purge%20protection%20key%20vault%20recovery.md)
  - **この演習ではKey Vaultへのアクセス権を割り当てる必要があります。また、実際にキーを作成してから削除する必要があります。**
- [Azure portal を使用して Azure プライベート エンドポイント経由で Azure SQL サーバーに接続する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_07_Connect%20to%20an%20Azure%20SQL%20server%20using%20an%20Azure%20Private%20Endpoint%20using%20the%20Azure%20portal.md)
  - **データベース名とサーバー名は演習環境に提示されている名前を使用してください。**
  - **サービス レベルおよびコンピューティング レベルはBasicを選択してください**
  - **SQLデータベースのサーバー名のリンクをクリックすると、ネットワークの設定ができます**
  - **SQL Server Management Studio は SSMS を検索して最新のバージョンをインストールしてください**

