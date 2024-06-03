**DALL-E モデルを使用して画像を生成する**

プレイグラウンドで「DALL-E」を選択してプロンプトを入力する

プロンプト例

```prompt
軍服を着た猫
```

 > 気に入る画像が生成されない場合は、「新しいイメージを生成する」アイコンをクリックすると再度画像が生成されます。

 > より具体的な説明をプロンプトに入力すると、生成される画像が想定しているイメージに近づきます。


```prompt
軍服を着た猫を漫画で書いてください
```

---

**アプリケーションの作成**


```prompt
import requests  # requestsライブラリをインポートします。
import time  # timeライブラリをインポートします。
import os  # osライブラリをインポートします。
from dotenv import load_dotenv  # dotenvライブラリからload_dotenv関数をインポートします。

def main():  # main関数を定義します。
        
    try:
        # Azure OpenAIサービスの設定を取得します。
        load_dotenv()  # .envファイルから環境変数をロードします。
        api_base = os.getenv("AZURE_OAI_ENDPOINT")  # APIのベースURLを環境変数から取得します。
        api_key = os.getenv("AZURE_OAI_KEY")  # APIキーを環境変数から取得します。
        api_version = '2024-02-15-preview'  # APIのバージョンを指定します。
        
        # 画像を生成するためのプロンプトを取得します。
        prompt = input("\n画像をリクエストするためのプロンプトを入力してください: ")  # ユーザーにプロンプトの入力を求めます。

        # DALL-Eモデルを呼び出します。
        url = "{}openai/deployments/dalle3/images/generations?api-version={}".format(api_base, api_version)  # APIのURLを構築します。
        headers= { "api-key": api_key, "Content-Type": "application/json" }  # ヘッダーにAPIキーとコンテンツタイプを設定します。
        body = {
            "prompt": prompt,  # ユーザーからのプロンプトをリクエストボディに設定します。
            "n": 1,  # 生成する画像の数を指定します。
            "size": "1024x1024"  # 画像のサイズを指定します。
        }
        response = requests.post(url, headers=headers, json=body)  # POSTリクエストを送信し、レスポンスを取得します。

        # レスポンスから改訂されたプロンプトと画像のURLを取得します。
        revised_prompt = response.json()['data'][0]['revised_prompt'] # 改訂されたプロンプトを取得します。
        image_url = response.json()['data'][0]['url'] # 画像のURLを取得します。

        # 生成された画像のURLを表示します。
        print(revised_prompt)  # 改訂されたプロンプトを表示します。
        print(image_url)  # 画像のURLを表示します。
        

    except Exception as ex:
        print(ex)  # 例外が発生した場合は、例外の内容を表示します。

if __name__ == '__main__': 
    main()  # スクリプトが直接実行された場合は、main関数を呼び出します。
```

```prompt
車を運転している猫
```

