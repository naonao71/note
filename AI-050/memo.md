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


**Module01**


---

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

---

 **Module03**

プレイグラウンドで実行する

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






