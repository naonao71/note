## **SC-401 Information Security Administrator**

最終更新日 2026/01/09

### **研修の準備**

[ESIトレーニング参加者に配布されているドキュメント](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4Rje8)

SC-401のトレーニングコースを始めるにあたり、以下の準備が必要です。

- [Microsoftアカウントの作成](https://github.com/naonao71/note/blob/main/prep/msa.md)
- [ラボ環境（LODS）の入手](https://github.com/naonao71/note/blob/main/prep/lods.md)

> [!NOTE]
> - ラボ環境は Microsoft のセキュリティ施策により 新規に CloudSlice 環境（[接続テスト](https://labondemand.com/Launch/949F2C16)）で提供されました。
> - このトレーニングで初めて Azure Portal をご利用する方は、[こちら](https://learn.microsoft.com/ja-jp/training/modules/tour-azure-portal/)で操作方法を学習できます。
> - トレーニング初日に、講師と一緒に行います。遅れて参加した方は[こちら](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VkE4)を参考に進めてください。

**リンク一覧およびメモ**

[SC-401のテキスト](https://learn.microsoft.com/ja-jp/training/courses/sc-401t00)

SC-401 ラボトップ（[日本語](https://github.com/MicrosoftLearning/SC-401T00-Information-Security-Administrator.ja-jp/tree/main/Instructions/Labs)/[英語](https://github.com/MicrosoftLearning/SC-401T00-Information-Security-Administrator/tree/master/Instructions/Labs))


[マイクロソフトアカウント作成](https://account.microsoft.com/account/Account)

> [!NOTE]
> - トレーニングで使用するマイクロソフトアカウントを作成する。既にアカウントがある方もこのトレーニング用に作成することを推奨。
> - メールアドレスも新規に作成する（既存メールアドレスに紐づけない）。

[LODS（Learn On Demand LMS)](https://esi.learnondemand.net/User/Login?ReturnUrl=%2F)

### Labの手順に関して
提供されているLabでは様々な設定を試しますが、その設定の動作を確認することはしませんのでうまく設定できない場合などはスキップして進めることができます。
- ラボ1-タスク3-1 
  - [秘密度ラベル] ページで、[**Internal**] 秘密度ラベル グループを見つけます。
- ラボ1-タスク3-8 
  - [アクセス許可の割り当て] リンクを選択します。 [アクセス許可の割り当て] ポップアップ パネルで [+ 任意の認証済みユーザーを追加] を選択し、[保存] を選択してこの設定を適用します。
- ラボ1-タスク4-6 
  - [発行する秘密度ラベル] ポップアップ パネルで、[Internal/Employee data (HR)] チェックボックスをオンにし、ポップアップ ページの下部にある [追加] を選択します。
- ラボ1-タスク5
  - ウィザードに従って、自動ラベル付きポリシーを作成していますが、名前がバッティングしてエラーになります。この場合、作成された自動ラベル付きポリシーをいったん削除して、手動で作成すれば完了します。
- ラボ1-タスク8-3
  - ドロップダウンから [Highly Confidential-Specified People] を選択します
***
- ラボ2-タスク1-4
  - ドロップダウン 2:[このグループのメンバーです] については、[メンバーの選択] ポップアップで [Finance Team] と [保存] を選択します。
  - [RMS テンプレートの選択] ポップアップで [Encrypt] を選択し、[保存] を選択します。
- ラボ2-タスク2-1
  - [ルール] ページで、新しく作成した [Encrypt messages from Finance department] を選択します。
- ラボ2-タスク2-2
  - [Encrypt messages from Finance department] ポップアップで、[ルール条件の編集] を選択します。
- ラボ2-タスク2-4
  - フォールバック アクションを追加するには、リンクを選択します。 [代替アクションの指定] ポップアップで [Wrap] を選択し、ポップアップの下部にある [保存] を選択します。
- ラボ2-タスク2-5
  - 下部の [Encrypt messages from Finance department ] ポップアップで [保存] を選択します。
- ラボ2-タスク3-1
[ルール] ページで、新しく作成した [Encrypt messages from Finance department] [Disabled] を選択します。
- ラボ2-タスク3-2
  - [Encrypt messages from Finance department] ポップアップで、[ルールを有効または無効にする] の下のトグルを [有効] に設定します。
***