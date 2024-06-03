**AI-050 Azure OpenAI Service を使用して生成 AI ソリューションを開発する**
***

最終更新日 2024/05/27

**リンク一覧およびメモ**

AI-050 ラボトップ [日本語](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/tree/main/Labfiles)

Skillpipe

- 2022年1月17日より Skillpipe のコンテンツは Microsoft Learn と統合されました。これにより、Skillpipe は提供されません。
- [トレーニングで使用するテキスト](https://learn.microsoft.com/ja-jp/training/paths/develop-ai-solutions-azure-openai/)

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

---

**Lab 概要**

- Module1 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/01-get-started-azure-openai.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod1.md)
- Module02 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/02-natural-language-azure-openai.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod2.md)
- Module03 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/03-prompt-engineering.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod3.md)
- Module04 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/04-code-generation.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod4.md)
- Module05 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/05-generate-images.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod5.md)
- Module6 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/06-use-own-data.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod6.md)




