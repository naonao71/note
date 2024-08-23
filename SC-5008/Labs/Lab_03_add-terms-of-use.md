---
lab:
    title: 'Lab 3: - Add terms of use and acceptance reporting'
    module: 'Module : Deploying access using Microsoft Entra entitlement management'
---

# Lab 3: 利用規約と同意レポートを追加する

## ラボシナリオ

Microsoft Entra の使用条件ポリシーは、組織がエンド ユーザーに情報を提示するために使用できる簡単な方法を提供します。このプレゼンテーションにより、ユーザーは法的要件またはコンプライアンス要件に関連する免責事項を確認できます。この記事では、利用規約 (ToU) ポリシーの使用を開始する方法について説明します。組織の ToU ポリシーを作成して適用する必要があります。

#### **所要時間**: 20 分

### 演習 1 - 利用規約の設定とテスト

#### Task 1 - 利用規約を追加する

**重要** 
- Microsoft Entra ID の使用条件を使用および設定するには、以下のサブスクリプションが必要です：
- Microsoft Entra ID Premium P1、P2、EMS E3、または EMS E5 サブスクリプション。
- これらのサブスクリプションをお持ちでない場合は、Microsoft Entra ID Premiumのトライアルをご利用ください。
- 次の管理者アカウントのいずれかを使用します：
  - グローバル管理者
  - セキュリティ管理者
  - 条件付きアクセス管理者

1. グローバル管理者アカウントを使用して https://entra.microsoft.com にサインインします。

2. 「**Indentity Governance**」を選択します。

3. メニューの **エンタイトルメント管理** で、**利用規約** を選択します。

4. **利用規約** ページのトップ メニューで、**+ 新しい条件** を選択します

    ![Screen image displaying the Terms of use page with New terms highlighted](./Media/new-terms-of-use.png)

5. **名前** ボックスに「**Testing terms of use**」と入力します。

    **Note** - これは、Azure portal で使用される使用条件です。

6. **利用規約のドキュメント** ボックスを選択し、最終的な利用規約 PDF を参照して選択します。

   **ToU File Provided** - browse to the github repo **AllFiles/Labs/Lab3** to get a sample Terms-of-User PDF document for use in this lab.

7. In the **Display name** box, enter **Contoso Terms of Use**.

    **Note** - This is the title that users see when they sign in.

8. Select **English** for the language for your terms of use document.

   **Note** - The language option allows you to upload multiple terms of use, each with a different language. The version of the terms of use that an end user will see will be based on their browser preferences.

9. To require end users to view the terms of use prior to accepting them, set **Require users to expand the terms of use** to **On**.

10. To require end users to accept your terms of use on every device they are accessing from, set **Require users to consent on every device** to **Off**. Users may be required to install additional applications if this option is enabled.

    **Warning** - Consent on every device will require users to register each device with Microsoft Entra ID prior to getting access. It is a good practice to require this setting to On; however for the purpose of a cleaner lab, we are using Off.

11. If you want to expire terms of use consents on a schedule, set **Expire consents** to **On**. When set to On, two additional schedule settings are displayed.

12. Use the **Expire starting on** and **Frequency** settings to specify the schedule for terms of use expirations. The following table shows the result for a couple of example settings:

    | Expire starting on | Frequency | Result |
    |---|---|---|
    | Today's date | Monthly | Starting today, users must accept the terms of use and then reaccept every month.|
    | Date in the future | Monthly | Starting today, users must accept the terms of use. When the future date occurs, consents will expire and then users must reaccept every month. |

    For example, if you set the expire starting on date to **Jan 1** and frequency to **Monthly**, here is how expirations might occur for two users:

    | User | First accept date | First expire date | Second expire date | Third expire date |
    |---|---|---|---|---|
    | Alice | Jan 1 | Feb 1 | Mar 1 | Apr 1|
    | Bob | Jan 15 | Feb 1 | Mar 1| Apr 1 |

13. Use the **Duration before re-acceptance requires (days)** setting to specify the number of days before the user must reaccept the terms of use. This allows users to follow their own schedule. For example, if you set the duration to **30** days, here is how expirations might occur for two users:

    | User | First accept date | First expire date | Second expire date | Third expire date |
    |---|---|---|---|---|
    | Alice | Jan 1 | Jan 31 | Mar 2 | Apr 1|
    | Bob | Jan 15 | Feb 14 | Mar 16| Apr 15

    **Note** - It is possible to use the Expire consents and Duration before re-acceptance requires (days) settings together, but typically you use one or the other.

14. Under **Conditional Access**, select **Custom policy**.

    **IMPORTANT** - Conditional Access policy controls (including terms of use) do not support enforcement on service accounts. We recommend excluding all service accounts from the Conditional Access policy.

    Custom Conditional Access policies enable granular terms of use, down to a specific cloud application or group of users. For more information, see [https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/require-tou](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/require-tou).

15. When complete, select **Create**.

16. When the terms of use is created, you will automatically be redirected to the Conditional access policy page. On the page, in the **Name** box, enter **Enforce ToU**.

17. Under **Assignments**, select **Users or workload identities**.

18. On the include tab, select **Users and groups** check box.

19. In the Select pane, select **Adele Vance** to use to test the terms of use policy.

   **Warning** - If you choose your administrator account, like all conditional access policies, be sure you have another account with enough permissions to change the conditional access policy. This is to ensure your administrator account will not be locked out should the conditional access policy result in an undesirable outcome.

20. Select **Cloud apps or actions.**

21. Select **All cloud apps**.

22. Under **Access controls**, select **Grant**.

23. In the Grant pane, select **Testing terms of use** and then select **Select**.

24. Under **Enable policy**, select **On**.

25. When complete, select **Create**.

    ![Screen image displaying the conditional access policy with configuration options highlighted](./Media/terms-of-use-ca-policy.png)

26. If you chose to use your own account, you can refresh your browser. You will be prompted to sign in again. When you sign in, you will be required to accept the terms of use.

#### Task 2 - Log in as Adele

1. Open a new InPrivate browser window.
2. Connect to https://portal.azure.com.
3. If if comes up saying you are already logged in, Select on the logged in users name in the upper-right of the screen and choose **Sign in with a different account**.
4. Log in as Adele:

    | Setting | Value to enter |
    | :--- | :--- |
    | User Name | **AdeleV@** `<<your domain name>>.onmicrosoft.com` |
    | Password | Enter the tenant's admin password(Refer the Lab Resources tab to retrieve the tenant admin password) |

5. Validate Adele's login with the MFA request.
6. View the Terms of Use.
7. You can choose to **Accept** or **Decline**.

    **Note** - If you choose **decline** then during a future login as AdeleV you will again be required to view and accept the Terms of Use.

    **Note**: Terms of Use may take a few minutes to appear or you can logout and log back in to the portal.
 
#### Task 3 - View report of who has accepted and declined

The Terms of use page shows a count of the users who have accepted and declined. These counts and who accepted/declined are stored for the life of the terms of use.

1. In Microsoft Azure, in **Identity Governance > Terms of use**, locate your terms of use.

2. For a terms of use, select the numbers under **Accepted** or **Declined** to view the current state for users.

    ![Screen image displaying the terms of use with the Accepted and Declined columns highlighted](./Media/terms-of-use-accept-decline.png)

3. In this exercise you may not have any accepted or declined terms of use. In the following example, the **Accepted** value was selected. You can see the reported user information for those that have accepted the terms of use.

    ![Terms of use consents pane listing the users that have accepted](./Media/accepted-tou.png)

4. On the **Terms of Use Consents** page select **Download** to download a consents report.

5. On the **Identity Governance | Terms of Use** page, highlight **Testing terms of use** and select **View selected audit logs** to view the audit logs activity.

#### Task 4 - What terms of use looks like for users

1. Once a terms of use is created and enforced, users who are in scope will see the terms of use page.

    ![Example terms of use that appears when a user signs in](./Media/user-tou.png)

2. Users can view the terms of use and, if necessary, use buttons to zoom in and out.

    ![View of terms of use with zoom buttons](./Media/zoom-buttons.png)

3. On mobile devices, the terms of use will be displayed similar to the following example.

    ![Example terms of use that appears when a user signs in on a mobile device](./Media/mobile-tou.png)

#### Task 5 - How users can review their terms of use

Users can review and see the terms of use that they have accepted by using the following procedure.

1. Browse to [https://myapps.microsoft.com](https://myapps.microsoft.com/) and then sign in using your user account.

2. Select the user profile photo and then select **View account**. On the Overview page, select VIEW SETTINGS AND PRIVACY.


3. On the Settings & Privacy page, select the **Privacy** tab.

4. Under **Organization’s notice**, you can review the terms of use you have accepted.

#### Task 6 - Edit terms of use details

You can edit some details of terms of use, but you can't modify an existing document. The following procedure describes how to edit the details.

1. Sign in to the [https://entra.microsoft.com](https://entra.microsoft.com) as a Global administrator.

2. Open Microsoft Entra ID item and the select **Identity Governance** from the menu.

3. In the left navigation menu, under **Entitlement management**, select **Terms of use**.

4. Select the terms of use you want to edit.

5. On the top menu, select **Edit terms**.

6. In the Edit terms of use pane, you can change the following:

    - **Name** – this is the internal name of the ToU that is not shared with end users
  
    - **Display name** – this is the name that end users can see when viewing the ToU

    - **Require users to expand the terms of use** – Setting this to **On** will force the end use to expand the terms of use document before accepting it.

    - **Update an existing terms of use** document.

    - You can add a language to an existing ToU If there are other settings you would like to change, such as require users to consent on every device, expire consents, duration before reacceptance, or Conditional Access policy, you must create a new terms of use.

    ![Screen image of the Identity Governance terms of use being edited.](./Media/edit-terms-of-use.png)

7. Once you are done, select **Save** to save your changes.

#### Task 7 - Update an existing terms of use document

You may, on occasion, be required to update the terms of use document.

1. Select the terms of use you want to edit.

2. Select **Edit terms**.

3. In the **Language Options** table, identify the terms of use language you want to update and then, in the **Action** column, select **Update**.

    ![Screen image displaying the terms of use with the update option highlighted](./Media/edit-terms-of-use-update.png)

4. In the Update terms of use version pane, you can upload a new version of your terms of use document.

5. Additionally, you can use the **Require reaccept** toggle button if you want to require your users to accept this new version the next time they sign in. If you do not require your users to re-accept, their previous consent will stay current and only new users who have not consented before or whose consent expires will see the new version.

    ![Screen image displaying the update terms of use version pane with the upload required pdf and require re-accept highlighted](./Media/update-terms-of-use-version.png)

6. Once you have uploaded your new pdf and decided on re-accept, select **Add**.

7. You will now see the most recent version under the Document column.
