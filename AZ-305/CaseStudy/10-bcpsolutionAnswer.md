**ビジネス継続性ソリューションの設計**

[ソリューション例](https://github.com/naonao71/note/blob/main/AZ-305/CaseStudy/media/10-01.png)

### 設計案

- Azureファイル共有を利用し、File Syncによって既存ファイル共有と同期する.
- VPNまたはSMB3.0、HTTPSなどを環境に合わせて設定する.
- Azure AD Connectにより、Azure ADと既存ユーザーとアクセス権の同期を図る.
- Recovery Service Vaultにより4時間おきにFile共有のバックアップを取得する.

---

[https://learn.microsoft.com/ja-jp/azure/architecture/hybrid/azure-file-share](https://learn.microsoft.com/ja-jp/azure/architecture/hybrid/azure-file-share)