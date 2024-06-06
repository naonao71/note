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
**テキストおよび補足資料**
- Module01: Azure OpenAI Service で作業を開始する([テキスト](https://learn.microsoft.com/ja-jp/training/modules/get-started-openai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod1_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))
- Module02: Azure OpenAI Service を使用して自然言語ソリューションを構築する([テキスト](https://learn.microsoft.com/ja-jp/training/modules/build-language-solution-azure-openai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod2_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))
- Module03: Azure OpenAI Service を使用してプロンプト エンジニアリングを適用する([テキスト](https://learn.microsoft.com/ja-jp/training/modules/apply-prompt-engineering-azure-openai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod3_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))
- Module04: Azure OpenAI Service を使用してコードを生成する([テキスト](https://learn.microsoft.com/ja-jp/training/modules/generate-code-azure-openai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod4_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))
- Module05: Azure OpenAI Service を使用して画像を生成する([テキスト](https://learn.microsoft.com/ja-jp/training/modules/generate-images-azure-openai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod5_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))
- Module06: Azure OpenAI Service を使用して検索拡張生成 (RAG) を実装する([テキスト](https://learn.microsoft.com/ja-jp/training/modules/use-own-data-azure-openai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod6_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))
- Module07: 責任ある生成 AI の基礎([テキスト](https://learn.microsoft.com/ja-jp/training/modules/responsible-generative-ai/)/[資料](https://github.com/naonao71/note/blob/main/AI-050/AI-050_Mod7_%E8%A3%9C%E8%B6%B3%E8%B3%87%E6%96%99_Ver1.0.pdf))


---

**Lab 概要**

- Module01 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/01-get-started-azure-openai.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod1.md)
- Module02 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/02-natural-language-azure-openai.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod2.md)
- Module03 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/03-prompt-engineering.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod3.md)
- Module04 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/04-code-generation.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod4.md)
- Module05 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/05-generate-images.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod5.md)
- Module06 [手順](https://github.com/MicrosoftLearning/mslearn-openai.ja-jp/blob/main/Instructions/Exercises/06-use-own-data.md)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod6.md)
- Module07 [手順](https://microsoftlearning.github.io/mslearn-ai-fundamentals/Instructions/Labs/14-azure-openai-content-filters.html#explore-content-filters)/[解説](https://github.com/naonao71/note/blob/main/AI-050/mod7.md)





