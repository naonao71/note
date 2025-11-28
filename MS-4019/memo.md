# **MS-4019 エージェントを使用して日常のビジネス プロセスを変革する**
***

最終更新日 2025/11/28

**研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

MS-4019で Microsoft 365 Copilot 環境がなく自身で検証したい場合は以下の準備が必要です。

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境（[接続テスト](https://labondemand.com/Launch/949F2C16)）で提供されました。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> 英語環境での提供となり、指示なども英語で記載されています。またラボ環境の制約としてエージェントの参照データがない場合があります。
> SharePoint環境は提供されていないのでシミレーションで行います。
> 実際にラボ環境で実施したい方は、[ラボ手順ガイド](https://github.com/naonao71/note/blob/main/MS-4019/MS-4019-lab.pdf)を参考にしてください。

## 講義
- 講師自己紹介
- 講義(講義は**講師がテキストから作成した資料**を使用します。各自ダウンロードすることができます。テキストで提供されているモジュール3とモジュール4は統合しています。)
  - [エージェントの使用を開始する](https://github.com/naonao71/note/blob/main/MS-4019/MS-4019-M1.pdf)
  - [事前構築済みの Microsoft 365 Copilot エージェントを調べる](https://github.com/naonao71/note/blob/main/MS-4019/MS-4019-M2.pdf)
  - [エージェントのビルド、管理、共有、使用](https://github.com/naonao71/note/blob/main/MS-4019/MS-4019-M3-4.pdf)
- 満足度アンケート

**リンク一覧およびメモ**
> [!NOTE]
> リンクをクリックする際に、Ctrlキーを押してクリックすると別のタブで開きます。

[MS-4019 テキスト](https://learn.microsoft.com/ja-jp/training/paths/implement-no-code-copilot-agents-microsoft-365-sharepoint/)

[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

> [!NOTE]
> - トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
> - メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。
> - 例：xxx@outlook.com

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

- トレーニングで使用するラボ環境

 > LODS環境は英語キーボードに設定されています。日本語キーボード設定に変更するにはLODS環境で下記コマンドを実行します。

```powershell
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "LayerDriver JPN" -Value "kbd106.dll"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardType" -Value 7
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" -Name "OverrideKeyboardSubtype" -Value 2
Restart-Computer -Force
```
