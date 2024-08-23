---
lab:
    title: 'Lab 5: - Configure Privileged Identity Management for Microsoft Entra roles'
    module: 'Module : Deploying access using Microsoft Entra entitlement management'
---

# Lab 5: Microsoft Entra ロールの Privileged Identity Management を構成する

## ラボシナリオ

特権ロール管理者は、対象となるロールの割り当てをアクティブ化しているユーザーのエクスペリエンスの変更など、Microsoft Entra 組織内の Privileged Identity Management (PIM) をカスタマイズできます。PIM の設定について理解しておく必要があります。

#### **所要時間**: 30 分

### 演習 1 - Microsoft Entra のロール設定を構成する

#### Task 1 - ロール設定を開く

次の手順に従って、Microsoft Entra ロールの設定を開きます。

1. グローバル管理者アカウントを使用して https://entra.microsoft.com にサインインします。

2. 「**Indentity Governance**」を選択します。

3. **Privileged Identity Management** を選択し、**Microsoft Entra ロール** を選択します。

4. 左側のナビゲーションで、**設定** を選択します。

    ![Screen image displaying the Microsoft Entra roles page with the Settings menu highlighted](./Media/pim-ad-roles-settings.png)

5. ロールのリストを確認し、**ロール名による検索** に「**コンプライアンス**」と入力します。

6. 結果で、 **コンプライアンス管理者** を選択します。

7. ロール設定の詳細情報を確認します。

#### Task 2 - アクティブ化には承認が必要

1. **ロール設定の詳細** ページのトップ メニューで、**編集** を選択します。

    ![Screen image displaying the top portion of the Role setting details -Compliance Administrator page with Edit highlighted](./Media/pim-edit-compliance-role.png)

2. ロール設定の編集 – コンプライアンス管理者 ページで、**アクティブにするには承認が必要です** チェック ボックスをオンにします。

3. **承認者の選択** を選択します。

4. **メンバーの選択** ウィンドウで、管理者アカウント(Mod Administrator)を選択し、**選択** を選択します。

    ![Screen image displaying the edit role settings page and select a member pane with the selected members highlighted](./Media/pim-add-approver.png)

5. ロール設定を構成したら、**更新** を選択して変更を保存します。

### 演習 2 - Microsoft Entra ロールを使用した PIM

#### Task 1 - ロールの割り当て

Microsoft Entra ID を使用すると、グローバル管理者は永続的な Microsoft Entra 管理者ロールの割り当てを行うことができます。これらのロールの割り当ては、Microsoft Entra 管理センター、Azure portal、または PowerShell コマンドを使用して作成できます。Privileged Identity Management (PIM) サービスでは、特権ロール管理者が永続的な管理者ロールの割り当てを行うこともできます。さらに、特権ロール管理者は、ユーザーを Microsoft Entra 管理者ロールの対象にすることができます。適格な管理者は、必要なときにロールをアクティブ化でき、完了すると権限の有効期限が切れます。

次の手順に従って、ユーザーを Microsoft Entra 管理者ロールの対象にします。

1. グローバル管理者アカウントを使用して https://entra.microsoft.com にサインインします。

2. 「**Privileged Identity Management**」を選択します。

    **Note** - これは、**Identity Governance** - **Privileged Identity Management** のメニューにあります。

3. **Privileged Identity Management** ページの左側のナビゲーションで、 **Microsoft Entra ロール** を選択します。

4. クイック スタート ページの左側のナビゲーションで、**ロール** を選択します。

5. 上部のメニューで、**+ 割り当ての追加** を選択します。

    ![Screen image displaying Microsoft Entra roles with Add assignments menu highlighted](./Media/pim-assign-role.png)

6. **割り当ての追加** ページの **メンバーシップ** タブで、設定を確認します。

7. **ロールの選択** メニューを選択し、**コンプライアンス管理者** を選択します。

8. **名前でロールを検索** フィルターを使用して、ロールを見つけることができます。

9. **メンバーの選択** で、**メンバーが選択されていない** を選択します。

10. **メンバーの選択** ウィンドウで、**Miriam Graham** を選択し、**選択** を選択します。

11. **割り当ての追加** ページで、**次へ >** を選択します。

12. **設定** タブの **割り当ての種類** で、使用可能なオプションを確認します。このタスクでは、デフォルト設定の **対象** を使用します。

    - 対象な割り当てでは、ロールのメンバーがロールを使用するためのアクションを実行する必要があります。アクションには、多要素認証 (MFA) チェックの実行、業務上の正当な理由の提供、指定された承認者からの承認の要求が含まれる場合があります。
    - アクティブな割り当てでは、メンバーがロールを使用するためにアクションを実行する必要はありません。アクティブとして割り当てられたメンバーには、常にロールに割り当てられた権限があります。

13. 残りの設定を確認し、**割り当て** を選択します。

#### Task 2 - Miriam でログインする

1. 新しい InPrivate ブラウザー ウィンドウを開きます。

2. Microsoft Entra 管理センター (https://entra.microsoft.com) に接続します。

3. Miriam でログインします。

   | フィールド名 | 値 |
   | :--- | :--- |
   | ユーザー名 | **MiriamG@** `<<your domain.onmicrosoft.com>>` |
   | パスワード | パスワードを入力します。 |

4. **ID** メニューから**ユーザー** を開き、**すべてのユーザー** を選択します。

5. ユーザーのリストから **Miriam** を見つけます。

6. **概要** ページで、**割り当てられたロール** を探します。

7. **資格のある割り当て** を選択します。

8. コンプライアンス管理者ロールが Miriam で使用できるようになったことに注意してください。

#### Task 3 - Microsoft Entra ロールをアクティブ化する

Microsoft Entra ロールを引き受ける必要がある場合は、Privileged Identity Management の [マイ ロール] を開いてアクティブ化を要求できます。

1. 検索ウインドウで PIM と入力します。

2. **Privileged Identity Management** ページを開きます。

3. **Privileged Identity Management** ページの左側のナビゲーション メニューで、 **自分のロール** を選択します。

4. **自分のロール** ページで、 **資格のある割り当て** の一覧を確認します。

    ![Screen image displaying My roles with eligible role assignments highlighted](./Media/pim-my-roles.png)

5. コンプライアンス管理者ロールの行で、**アクティブ化** を選択します。

6. In the Activate – Compliance Administrator pane, select **Additional verification required** and then follow the instructions to provide additional security verification. You are required to authenticate only once per session.

    ![Screen image displaying a popup to activate the compliance administrator](./Media/pim-activate-role.png)

    **Verification** - Based on our current lab environment configuration, you will be required configure MFA and log in successfully.

7. After you have completed the additional security verification, in the Activate – Compliance Administrator pane, in the **Reason** box, enter the **This is my justification for activating this role**.

    **Important Note** - the principal of least prvilege, you should only activate the account for the amount of time you need it.  If the work needed to be done, only takes 1.5 hours, then set the duration to two hours.  Similarily, if you know that you won't be able to do the work until after 3pm, choose a Custom activation time.

8. Select **Activate**.

#### Task 4 - Assign a role with restricted scope

For certain roles, the scope of the granted permissions can be restricted to a single admin unit, service principal, or application. This procedure is an example if assigning a role that has the scope of an administrative unit.

1. Remember to close out the browser windows for MiriamG, then open the Microsoft Entra admin center with your administrator account.
2. Browse to the Privileged Identity Management page, and in the left navigation menu, select Azure **Microsoft Entra roles.**
3. Select **Roles**.
4. In the Roles page, on the top menu, select **+ Add assignments.**

5. In the Add assignments page, select the **Select role** menu and then select **User administrator.**

6. Select the **Scope type** menu and review the available options. For now, you will use the **Directory** scope type.

   **Tip** - Go to [https://docs.microsoft.com/en-us/azure/active-directory/roles/admin-units-manage](https://docs.microsoft.com/en-us/azure/active-directory/roles/admin-units-manage) for more information about the administrative unit scope type.

7. As you did when assigning a role without a restricted scope, you would add members and complete the settings options. For now, select **Cancel**.

#### Task 5 - Update or remove an existing role assignment

Follow these steps to update or remove an existing role assignment.

1. In the Open Privileged Identity Management > Microsoft Entra roles page, in the left navigation, select **Assignments**.

2. In **Assignments** list, for Compliance Administrator, review the options in the **Action** column.

3. Select **Update** and review the options available in the Membership settings pane. When complete, close the pane.

4. Select **Remove**.

5. In the **Remove** dialog box, review the information and then select **Yes**.
