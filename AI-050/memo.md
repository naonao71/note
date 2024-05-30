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

**Lab 概要**


**Module01**



**Module02**

```prompt
import os
from dotenv import load_dotenv
from openai import AzureOpenAI

def main():
    try:
        # 環境変数をロードします
        load_dotenv()
        azure_oai_endpoint = os.getenv("AZURE_OAI_ENDPOINT")
        azure_oai_key = os.getenv("AZURE_OAI_KEY")
        azure_oai_deployment = os.getenv("AZURE_OAI_DEPLOYMENT")

        # Azure OpenAIクライアントを初期化します
        client = AzureOpenAI(
            azure_endpoint=azure_oai_endpoint,
            api_key=azure_oai_key,
            api_version="2024-02-15-preview"
        )

		# システムメッセージを定義します
        system_message = """私は山田という名前のハイキングガイドで、人々が自分の地域でハイキングを見つけるお手伝いをしています。
        指定された地域がない場合は、日光の尾瀬の近くをデフォルトとします。
        その後、長さが異なる近くのハイキングコースを3つ提案します。
        おすすめする際には、そのハイキングコースの地元の自然に関する興味深い事実も共有します。
        """

        while True:
            # ユーザー入力を取得します
            input_text = input("プロンプトを入力してください。(もしくは 'quit' と入力すると終了します): ")
            if input_text.lower() == "quit":
                break
            if len(input_text) == 0:
                print("プロンプトを入力してください。")
                continue

            print("\nAzure OpenAIエンドポイントへの要約リクエストを送信中...\n\n")

            # Azure OpenAIモデルにリクエストを送信します
            response = client.chat.completions.create(
                model=azure_oai_deployment,
                temperature=0.7,
                max_tokens=800,
                messages=[
                    {"role": "system", "content": system_message},
                    {"role": "user", "content": input_text}
                ]
            )

            # レスポンスを出力します
            generated_text = response.choices[0].message.content
            print("レスポンス: " + generated_text + "\n")

    except Exception as ex:
        print(ex)

if __name__ == '__main__':
    main()
```

```prompt
尾瀬のおすすめのハイキング場所を教えてください？
```

```prompt
富士山の近くでハイキングするならどこがいいでしょうか？難易度は簡単で、5から6キロ程度で、適度な標高差のあるコースを探しています。
```

　> temperature の値を**1.0**にあげるとランダム性が高くなるので、同じプロンプトを入力した場合でも、多くの場合、応答が変化します。

**会話履歴を維持する**

```prompt
尾瀬のおすすめのハイキング場所を教えてください？
```