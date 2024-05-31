**Module03**

**プレイグラウンドで実行する**

```prompt
これはどんな記事ですか?
----
カリフォルニアで深刻な干ばつが発生する見込み

干ばつにより、この地域の広い範囲で水不足が深刻化する恐れがあるため、カリフォルニアの住民数百万人が水不足と芝生の乾燥に備えています。

干ばつの深刻さを示す顕著な兆候として、南カリフォルニアの当局は、住民約 800 万人の屋外での水の使用を週 1 日に制限するという、初めての措置を発表しました。

人々がより乾燥した日常に適応するにつれて、日常生活がどのように変化するかについてはまだ多くのことが不明です。しかし、当局は状況が深刻であり、今年後半にはさらに厳しい制限につながる可能性があると警告しています。
```

システムメッセージを変更する

```prompt
あなたはニュース記事を分類するニュース事業者です。
```

**例を追加する**

ユーザー

```prompt
これはどんな記事ですか?
---
ニューヨーク ベースボールズがシカゴに大勝

ニューヨーク ベースボールズは昨夜、シカゴ サイクロンズを相手に 5-0 の大完封勝利を収め、7 回裏後半に 3 点ホームランを放って勝利を確定させました。

マリオ ロジャース投手はニューヨークで 96 球を投げ、わずか 2 安打で、今年最高の成績を残しました。

シカゴ サイクロンズの 2 安打は 2 回と 5 回に放たれましたが、ランナーをホームに送り得点させることができませんでした。
```

アシスタント

```prompt
スポーツ
```

さらに追加します

ユーザー

```prompt
この記事を分類してください
---

オスカー賞の歓喜の瞬間

先週のオスカー賞は、本当に素晴らしいものでした!

あるスキャンダルが話題をさらったかもしれませんが、今年のアカデミー賞は、私たちを歓喜に満たし、涙を流す瞬間に満ちていました。
これらの俳優と女優は、真に感動的な演技と、素晴らしい笑いを提供し、私たちを冬を乗り切らせてくれました。

ロビン・クラインの歴史的な受賞から、ケイシー・ジェンセン自身のフルパフォーマンスまで、明日のすべての祝賀行事の再放送をお見逃しなく。
```

アシスタント

```prompt
エンターテイメント
```


ここで、**変更を適用する** をクリックします。


再度、先ほどの質問を行います。

```prompt
これはどんな記事ですか?
----
カリフォルニアで深刻な干ばつが発生する見込み

干ばつにより、この地域の広い範囲で水不足が深刻化する恐れがあるため、カリフォルニアの住民数百万人が水不足と芝生の乾燥に備えています。

干ばつの深刻さを示す顕著な兆候として、南カリフォルニアの当局は、住民約 800 万人の屋外での水の使用を週 1 日に制限するという、初めての措置を発表しました。

人々がより乾燥した日常に適応するにつれて、日常生活がどのように変化するかについてはまだ多くのことが不明です。しかし、当局は状況が深刻であり、今年後半にはさらに厳しい制限につながる可能性があると警告しています。
```

　> 具体的なメッセージと、予想される質問（ユーザー）と応答（アシスタント）のいくつかの例を組み合わせることで、結果の形式が一貫したものになります。

システムをデフォルトに戻します。


```prompt
# 1. 動物のリストを作成する
# 2. それらの動物に付ける風変わりな名前のリストを作成する
# 3. それらをランダムに組み合わせて、25 個の動物と名前のペアのリストを作成する
```

 > モデルは回答を番号付きリストに分けて応答し、それらはおそらくプロンプトを満たしています。 これは適切な応答ですが、実際に望んでいたことは、説明したタスクを実行する Python プログラムをモデルに作成させることだったとします。

システムメッセージを変更します。

```prompt
あなたは、Python コードの作成を支援するコーディング アシスタントです。
```

ユーザープロンプトに再度入力します。

```prompt
# 1. 動物のリストを作成する
# 2. それらの動物に付ける風変わりな名前のリストを作成する
# 3. それらをランダムに組み合わせて、25 個の動物と名前のペアのリストを作成する
```

 > モデルはプロンプトで要求されたPythonコードを応答するはずです。


----

**アプリケーションを構成する**

**prompt-engineering.py**

 > 下記のプログラムは日本人が理解しやすいようにシステムメッセージを変更しています。また、コメントも日本語で記載しています。

```prompt
import os
import asyncio
from dotenv import load_dotenv

# Azure OpenAIパッケージを追加
from openai import AsyncAzureOpenAI

# OpenAIからの各呼び出しの完全な応答を印刷するかどうかを設定
printFullResponse = False

async def main():
    try:
        # 設定情報を取得
        load_dotenv()
        azure_oai_endpoint = os.getenv("AZURE_OAI_ENDPOINT")
        azure_oai_key = os.getenv("AZURE_OAI_KEY")
        azure_oai_deployment = os.getenv("AZURE_OAI_DEPLOYMENT")

        # Azure OpenAIクライアントを設定
        client = AsyncAzureOpenAI(
            azure_endpoint=azure_oai_endpoint,
            api_key=azure_oai_key,
            api_version="2024-02-15-preview"
        )

        while True:
            # ユーザーがシステムプロンプトを変更できるようにアプリを一時停止
            print("アプリを一時停止して、システムプロンプトを変更できるようにします。\n続行するにはEnterキーを押してください...")
            input()

            # システムメッセージを読み込み、ユーザーメッセージのプロンプト
            system_text = open(file="system.txt", encoding="utf8").read().strip()
            user_text = input("ユーザーメッセージを入力するか、'quit'で終了します: ")
            if user_text.lower() == 'quit' or system_text.lower() == 'quit':
                print('プログラムを終了します...')
                break

            # Azure OpenAIモデルを呼び出す
            await call_openai_model(system_message=system_text, user_message=user_text, model=azure_oai_deployment, client=client)

    except Exception as ex:
        print(ex)

# Azure OpenAIモデルにリクエストを送信し、応答を取得する関数
async def call_openai_model(system_message, user_message, model, client):
    # リクエストをモデルに送信するためのメッセージをフォーマット
    messages = [
        {"role": "system", "content": system_message},
        {"role": "user", "content": user_message},
    ]

    print("\nAzure OpenAIモデルにリクエストを送信中...\n")

    # Azure OpenAIモデルを呼び出す
    response = await client.chat.completions.create(
        model=model,
        messages=messages,
        temperature=0.7,
        max_tokens=800
    )

    # 応答を印刷
    if printFullResponse:
        print(response)

    print("応答:\n" + response.choices[0].message.content + "\n")

# メイン関数を実行
if __name__ == '__main__':
    asyncio.run(main())
```

**アプリケーションを試す**

システムプロンプト

```prompt
あなたはAIアシスタントです
```

ユーザーメッセージ

```prompt
新しい野生動物救済の紹介を書いてください
```

**ユーザーメッセージを変化させることで、応答にどのような違いがあるかを確認する**

システムプロンプト

```prompt
あなたはメールを書くのを手伝ってくれるAIアシスタントです
```

ユーザーメッセージ

```prompt
新しい野生動物救済の紹介を書いてください
```

```prompt
新しい野生動物救助団体の宣伝メールを書き、次の内容を記載します:
- 救助団体の名前は Contoso です
- ゾウを専門としています
- 当社の Web サイトで寄付を呼びかけます
```

```prompt
新しい野生動物保護団体の宣伝メールを書き、次の内容を記載します。
- 保護団体名は Contoso です
- ゾウ、シマウマ、キリンを専門に扱っています
- 当社の Web サイトで寄付を呼びかけています
\n 署名の後に、現在保護している動物のリストを表形式で記載します。これらの動物には、ゾウ、シマウマ、ゴリラ、トカゲ、ジャックウサギが含まれます。
```

**ユーザー プロンプトにグラウンディング コンテキストを追加**

**grounding.txt**


```prompt
Contoso は、動物とその生息地の保護と保全に専心する野生動物救助団体です。同団体は、野生動物とその生息地を絶滅の危機から守るためにたゆまぬ努力を続けています。Contoso の使命は、保護するすべての動物に安全で健康的な環境を提供することです。

Contoso が救助し、世話する動物の中で最も人気のあるものの 1 つがレッサーパンダです。ふわふわの尻尾と愛らしい顔で知られるレッサーパンダは、世界中の子供たちの心をつかんでいます。この遊び好きな動物はヒマラヤ原産で、生息地の喪失と密猟により絶滅危惧種に指定されています。

Contoso のレッサーパンダ救助プログラムは、最も成功した取り組みの 1 つです。同団体は、地元のコミュニティと協力してレッサーパンダの自然生息地を保護し、救助されたレッサーパンダに医療を提供しています。Contoso の専門家チームは、救助されたレッサーパンダがすべて最高のケアを受け、最終的に野生に戻されるように、たゆまぬ努力を続けています。

特に子供たちはレッサーパンダが大好きです。この遊び心のある動物は、子供向けの本、漫画、映画によく登場します。ふわふわのしっぽと明るい目を見れば、子供たちがレッサーパンダに惹かれるのは当然です。Contoso はこれを理解しており、野生動物保護の重要性と、絶滅危惧種の保護において子供たちが果たせる役割について子供たちを教育することを使命としています。

Contoso のレッサーパンダ救助プログラムは、この愛らしい動物を絶滅から救うだけでなく、子供たちが野生動物保護について学ぶユニークな機会も提供しています。この組織は、子供たちがレッサーパンダを間近で観察できる教育プログラムやツアーを提供しています。これらのプログラムは、子供たちに野生動物とその生息地を保護することの重要性を教えることを目的としています。

レッサーパンダ救助プログラムに加えて、Contoso はゾウ、トラ、サイなど、さまざまな動物の救助と世話も行っています。この団体は、保護下にあるすべての動物を保護することに尽力しており、動物たちに安全で健康的な環境を提供するためにたゆまぬ努力を続けています
---
```

**prompt-engineering.py**


```prompt
import os
import asyncio
from dotenv import load_dotenv

# Azure OpenAIパッケージを追加
from openai import AsyncAzureOpenAI

# OpenAIからの各呼び出しの完全な応答を印刷するかどうかを設定
printFullResponse = False

async def main():
    try:
        # 設定情報を取得
        load_dotenv()
        azure_oai_endpoint = os.getenv("AZURE_OAI_ENDPOINT")
        azure_oai_key = os.getenv("AZURE_OAI_KEY")
        azure_oai_deployment = os.getenv("AZURE_OAI_DEPLOYMENT")

        # Azure OpenAIクライアントを設定
        client = AsyncAzureOpenAI(
            azure_endpoint=azure_oai_endpoint,
            api_key=azure_oai_key,
            api_version="2024-02-15-preview"
        )

        while True:
            # ユーザーがシステムプロンプトを変更できるようにアプリを一時停止
            print("アプリを一時停止して、システムプロンプトを変更できるようにします。\n続行するにはEnterキーを押してください...")
            input()

            # システムメッセージを読み込み、ユーザーメッセージのプロンプト
            system_text = open(file="system.txt", encoding="utf8").read().strip()
            user_text = input("ユーザーメッセージを入力するか、'quit'で終了します: ")
            if user_text.lower() == 'quit' or system_text.lower() == 'quit':
                print('プログラムを終了します...')
                break

            # Azure OpenAIモデルを呼び出す
            await call_openai_model(system_message=system_text, user_message=user_text, model=azure_oai_deployment, client=client)

    except Exception as ex:
        print(ex)

    # Azure OpenAIモデルにリクエストを送信し、応答を取得する関数
    async def call_openai_model(system_message, user_message, model, client):
    # リクエストをモデルに送信するためのメッセージをフォーマット
    print("\nAdding grounding context from grounding.txt")
    grounding_text = open(file="grounding.txt", encoding="utf8").read().strip()
    user_message = grounding_text + user_message
    messages = [
        {"role": "system", "content": system_message},
        {"role": "user", "content": user_message},
    ]

    print("\nAzure OpenAIモデルにリクエストを送信中...\n")

    # Azure OpenAIモデルを呼び出す
    response = await client.chat.completions.create(
        model=model,
        messages=messages,
        temperature=0.7,
        max_tokens=800
    )

    # 応答を印刷
    if printFullResponse:
        print(response)

    print("応答:\n" + response.choices[0].message.content + "\n")

# メイン関数を実行
if __name__ == '__main__':
    asyncio.run(main())
```


システムプロンプト

```prompt
あなたは、人々が情報を見つけるのを手助けする AI アシスタントです。プロンプトに表示されたテキストから回答を提供し、簡潔に応答します。
```

ユーザーメッセージ

```prompt
Contoso の子供たちのお気に入りの動物は何ですか?
```
