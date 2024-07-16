**Microsoft Defender for Cloud の規制コンプライアンス コントロールを使用して Azure のサービスとワークロードをセキュリティで保護する**
***

最終更新日 2024/06/08

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

***
ラボ環境は英語で提供されています。そのまま行うこともできますが、ローカル環境からブラウザーを使用してラボを行うことができます。以下に日本語での指示をリンクします。

[演習 01 - 仮想ネットワーク インフラストラクチャを作成する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_01_Create%20a%20virtual%20network%20infrastructure.md)
[演習 02 - ワークスペースを作成する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_02_Create%20a%20Log%20Analytics%20workspace%20for%20Microsoft%20Defender%20for%20Cloud.md)
[演習 01 - Azure サブスクリプションで Defender for Cloud を有効にする](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_01_Enable%20Defender%20for%20Cloud%20on%20your%20Azure%20subscription.md)
[演習 03b - VM で Just-In-Time アクセスを有効にする](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_03b_Configure%20just-in-time%20(JIT)%20VM%20access%20in%20Defender%20for%20Cloud.md)
[演習 04 - Log Analytics エージェントを構成して Defender for Cloud のワークスペースと統合する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_04_Configure%20and%20integrate%20a%20Log%20Analytics%20agent%20and%20workspace%20in%20Defender%20for%20Cloud.md)
**この演習は2024/08で非推奨になります**
[演習 06a - Azure Key Vault のネットワーク設定を構成する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_06a_Configure%20Azure%20Key%20Vault%20networking%20settings.md)
**キーコンテナー名は「AZAPLKeyVault」の後ろにランダムな4桁の数字を入力してください**
[演習 06b - 論理的な削除と消去保護キー コンテナー リカバリを実行する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_06b_Perform%20soft-delete%20and%20purge%20protection%20key%20vault%20recovery.md)
**この演習ではKey Vaultへのアクセス権を割り当てる必要があります。また、実際にキーを作成してから削除する必要があります。**
[演習 07 - Azure portal を使用して Azure プライベート エンドポイント経由で Azure SQL サーバーに接続する](https://github.com/MicrosoftLearning/Secure-Azure-with-Microsoft-Defender-Cloud-Compliance-Controls.ja-jp/blob/main/Instructions/Labs/LAB_07_Connect%20to%20an%20Azure%20SQL%20server%20using%20an%20Azure%20Private%20Endpoint%20using%20the%20Azure%20portal.md)
**データベース名とサーバー名は演習環境に提示されている名前を使用してください。**
**サービス レベルおよびコンピューティング レベルはBasicを選択してください**
**SQL Server Management Studio は SSMS を検索して最新のバージョンをインストールしてください**

