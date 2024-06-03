**Module06**

**プレイグラウンドで実行する**

```prompt
ニューヨークに旅行に行きたいと思っています。どこに泊まればいいですか？
```

```prompt
ニューヨークにはどんなところがありますか？
```

 > 他にも東京、ロンドンなどについても、観光や滞在場所に関する同様の質問をします。これらの回答は一般的な事実が回答されます。


RAG"Retrieval-Augmented Generation (RAG)"を使用する

パンフレット [アーカイブデータ](https://aka.ms/own-data-brochures)をダウンロードします。

- ファイルをBlobストレージに追加して、Azure AI Search でインデックスを作成する


 > もしデータソースの追加の際に**ファイルのアップロード**でのデプロイ中にエラーが出た場合、ワークアラウンドとして**Azure AI Search**を選択して、**ファイルのアップロード**ウイザードで作成した**Azure AI Search**のインデックスを使用する


```prompt
I'd like to take a trip to New York. Where should I stay? in Japanese.
```

 >今回は提供されるPDFの情報が英語なので、日本語での質問ではなく英語を使用します。しかし、最後に「**in Japanese**」と入力すれば、応答は日本語で返されます。


```prompt
What are some facts about New York? in Japanese.
```

---

**アプリケーションの作成**

**ownData.py**


```prompt
import os
import json
from dotenv import load_dotenv

# Azure OpenAI インポート
from openai import AzureOpenAI

def main():
    # 設定を取得し、Azure OpenAI クライアントを初期化
    try:
        # 引用を表示するフラグ
        show_citations = Ture

        # 環境変数を読み込む
        load_dotenv()
        azure_oai_endpoint = os.getenv("AZURE_OAI_ENDPOINT")
        azure_oai_key = os.getenv("AZURE_OAI_KEY")
        azure_oai_deployment = os.getenv("AZURE_OAI_DEPLOYMENT")
        azure_search_endpoint = os.getenv("AZURE_SEARCH_ENDPOINT")
        azure_search_key = os.getenv("AZURE_SEARCH_KEY")
        azure_search_index = os.getenv("AZURE_SEARCH_INDEX")

        # Azure OpenAI クライアントを初期化
        client = AzureOpenAI(
            base_url=f"{azure_oai_endpoint}/openai/deployments/{azure_oai_deployment}/extensions",
            api_key=azure_oai_key,
            api_version="2023-09-01-preview")

        # ユーザーからの質問を入力として受け取る
        text = input('\nEnter a question:\n')

        # データソースの設定
        extension_config = dict(dataSources = [
            {
                "type": "AzureCognitiveSearch",
                "parameters": {
                    "endpoint":azure_search_endpoint,
                    "key": azure_search_key,
                    "indexName": azure_search_index,
                }
            }]
        )

        # Azure OpenAI モデルにリクエストを送信
        print("...Sending the following request to Azure OpenAI endpoint...")
        print("Request: " + text + "\n")

        response = client.chat.completions.create(
            model = azure_oai_deployment,
            temperature = 0.5,
            max_tokens = 1000,
            messages = [
                {"role": "system", "content": "You are a helpful travel agent"},
                {"role": "user", "content": text}
            ],
            extra_body = extension_config
        )

        # 応答を表示
        print("Response: " + response.choices[0].message.content + "\n")

        # 引用を表示する場合
        if (show_citations):
            print("Citations:")
            citations = response.choices[0].message.context["messages"][0]["content"]
            citation_json = json.loads(citations)
            for c in citation_json["citations"]:
                print(" Title: " + c['title'] + "\n URL: " + c['url'])

    # 例外処理
    except Exception as ex:
        print(ex)

# プログラムのエントリーポイント
if __name__ == '__main__':
    main()
```

**このコードの解説**

1. import ステートメントを使用して、必要なライブラリをインポートします。
1. AzureOpenAI クラスをインポートして、Azure OpenAI サービスとの通信を行います。
1. main 関数を定義し、プログラムのエントリーポイントとしています。
1. 環境変数を読み込み、Azure OpenAI サービスへの接続情報を取得します。
1. Azure OpenAI クライアントを初期化し、モデルに質問を送信するための設定を行います。
1. ユーザーからの質問を入力として受け取ります。
1. Azure Cognitive Search (*Azure AI Search*) との統合を設定します。
1. Azure OpenAI エンドポイントにリクエストを送信し、応答を受け取ります。
1. 応答を表示し、必要に応じて引用を表示します。
1. 例外が発生した場合は、エラーメッセージを表示します。


```prompt
Tell me about London? in Japanese.
```

