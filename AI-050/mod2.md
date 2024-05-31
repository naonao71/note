**Module02**

**test-openai-model.py**

 > 下記のプログラムは日本人が理解しやすいようにシステムメッセージを変更しています。また、コメントも日本語で記載しています。

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

　> temperature の値を「**1.0**」にあげるとランダム性が高くなるので、同じプロンプトを入力した場合でも、多くの場合、応答が変化します。

**会話履歴を維持する**

Azure OpenAI API は設計上ステートレスですが、プロンプトに会話の履歴を提供することで、AI モデルが過去のメッセージを参照できるようになります。

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
        # メッセージ配列を初期化します
        messages_array = [{"role": "system", "content": system_message}]

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
            messages_array.append({"role": "user", "content": input_text})

            response = client.chat.completions.create(
                model=azure_oai_deployment,
                temperature=1.0,
                max_tokens=800,
                messages=messages_array
            )

            # レスポンスを出力します
            generated_text = response.choices[0].message.content

            # 生成されたテキストをメッセージ配列に追加します
            messages_array.append({"role": "assistant", "content": generated_text})

            # 生成されたテキストを出力します
            print("サマリー: " + generated_text + "\n")

    except Exception as ex:
        print(ex)

if __name__ == '__main__':
    main()
```

```prompt
富士山の近くでハイキングするならどこがいいでしょうか？
```

```prompt
あなたが提案した2番目のハイキングはどれくらい難しいですか
```

 > 以前の回答を参照して回答していることが確認できます。 
