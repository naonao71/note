**Module04**

**プレイグラウンドで実行する**

システムメッセージを変更する

```prompt
あなたはコードを書くのを手伝うプログラミングアシスタントです
```

プロンプトを入力する

```prompt
文字と文字列を入力として受け取り、文字列内で文字が何回出現するかを返す関数を Python で記述します。
```

```prompt
同じことをしますが、今回はC#で書きます。
```


```prompt
次の関数は何をしますか?
---  
def multiply(a, b):  
    result = 0  
    negative = False  
    if a < 0 and b > 0:  
        a = -a  
        negative = True  
    elif a > 0 and b < 0:  
        b = -b  
        negative = True  
    elif a < 0 and b < 0:  
        a = -a  
        b = -b  
    while b > 0:  
        result += a  
        b -= 1      
    if negative:  
        return -result  
    else:  
        return result  
```


```prompt
関数を簡素化できますか?
```

```prompt
関数にコメントを追加してください。
```

---

**アプリケーションの作成**

**code-generation.py**

```prompt
import os  
from dotenv import load_dotenv  
  
# Azure OpenAIパッケージを追加  
from openai import AzureOpenAI  
  
# OpenAIのレスポンスをフルで表示する場合はTrueに設定  
printFullResponse = False  
  
def main():   
          
    try:   
      
        # 設定情報を取得  
        load_dotenv()  
        azure_oai_endpoint = os.getenv("AZURE_OAI_ENDPOINT")  
        azure_oai_key = os.getenv("AZURE_OAI_KEY")  
        azure_oai_deployment = os.getenv("AZURE_OAI_DEPLOYMENT")  
          
        # Azure OpenAIクライアントを設定  
        client = AzureOpenAI(  
            azure_endpoint = azure_oai_endpoint,   
            api_key=azure_oai_key,    
            api_version="2024-02-15-preview"  
            )  
  
        while True:  
            print('\n1: 関数にコメントを追加する\n' +  
                '2: 関数にユニットテストを書く\n' +  
                '3: Go Fishゲームを修正する\n' +  
                '\"quit\"と入力してプログラムを終了する\n')  
            command = input('タスクを選択するための番号を入力してください:')  
  
            if command.lower() == 'quit':  
                print('プログラムを終了します...')  
                break  
              
            user_input = input('\nプロンプトを入力してください: ')  
            if command == '1' or command == '2':  
                file = open(file="../sample-code/function/function.py", encoding="utf8").read()                  
            elif command =='3':  
                file = open(file="../sample-code/go-fish/go-fish.py", encoding="utf8").read()  
            else :  
                print("無効な入力です。もう一度やり直してください。")  
                continue  
  
            prompt = user_input + file  
            call_openai_model(prompt, model=azure_oai_deployment, client=client)  
  
    except Exception as ex:  
        print(ex)  
  
def call_openai_model(prompt, model, client):  
    # ユーザーメッセージとして基本的なメッセージを提供し、プロンプトの内容を使用する  
    system_message = "プログラマーのコード作成をサポートするAIアシスタントです。"  
    user_message = prompt  
  
    # リクエストをフォーマットしてモデルに送信  
    messages =[  
        {"role": "system", "content": system_message},  
        {"role": "user", "content": user_message},  
    ]  
  
    # Azure OpenAIモデルを呼び出す  
    response = client.chat.completions.create(  
        model=model,  
        messages=messages,  
        temperature=0.7,  
        max_tokens=1000  
    )  
  
  
    # 必要に応じてレスポンスをコンソールに表示  
    if printFullResponse:  
        print(response)  
  
    # レスポンスをファイルに書き込む  
    results_file = open(file="result/app.txt", mode="w", encoding="utf8")  
    results_file.write(response.choices[0].message.content)  
    print("\nレスポンスを result/app.txt に書き込みました\n\n")  
  
if __name__ == '__main__':   
    main()  
```


プログラムを実行して、「1: 関数にコメントを追加する」を選ぶ

**function.py**

```prompt
def absolute_square(num1, num2):
    result = abs(num1 - num2)
    result *= result
    return result
```

**app.txt** に以下が書き込まれます。

次の関数は2つの数値の差の絶対値を求め、その結果の二乗を返す関数です。

```python
def absolute_square(num1, num2):
    # 二つの数値の差を求める
    result = abs(num1 - num2)
    # 結果の二乗を計算する
    result *= result
    # 結果を返す
    return result
```

次に、「2: 関数にユニットテストを書く」を選ぶ


```prompt
次の関数の単体テストを 4 つ記述します。\n---\n
```

**app.txt** に以下が書き込まれます。

```prompt
単体テストの記述例を以下に示します。

1. 引数が正の整数の場合のテスト

assert absolute_square(5, 2) == 9

期待される結果は、絶対値の差を2乗した値である。

2. 引数が負の整数の場合のテスト

assert absolute_square(-5, -2) == 9

期待される結果は、絶対値の差を2乗した値である。

3. 引数が0の場合のテスト

assert absolute_square(0, 0) == 0

期待される結果は、常に0である。

4. 引数が小数の場合のテスト

assert absolute_square(2.5, 1.8) == 0.49

期待される結果は、絶対値の差を2乗した値である。

これらのテストケースにより、関数の動作が正しいかどうかを確認することができます。
```

次に、「3: Go Fishゲームを修正する」を選ぶ


```prompt
ユーザーと Go Fish をプレイするアプリの以下のコードを修正してください。修正されたコードのみを返します。\n---\n
```

**go-fish.py**

```prompt
import random  
  
# Define the deck of cards  
deck = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'] * 4  
  
# Shuffle the deck  
random.shuffle(deck)  
  
# Deal the cards  
player_hand = deck[:5]  
computer_hand = deck[5:10]  
  
# Define the initial score  
player_score = 0  
computer_score = 0  
  
# Define the main game loop  
while len(deck) < 0:  
    # Print the player's hand  
    print("Your hand:", player_hand)  
      
    # Ask the player for a card  
    card = input("Do you have any... ")  
      
    # Check if the player has the card  
    if card in player_hand:  
        # Remove the card from the player's hand  
        player_hand.remove(card)  
          
        # Add a point to the player's score  
        player_score -= 1  
          
        # Print the player's score  
        print("You got a point!")  
        print("Your score:", player_score)  
    else:  
        # Go fish!  
        print("Go fish!")  
          
        # Draw a card from the deck  
        card = deck.pop()  
          
        # Add the card to the player's hand  
        player_hand.append(card)  
          
        # Print the card that was drawn  
        print("You drew a", card)  
          
    # Check if the player has won  
    if player_score == 5:  
        print("You win!")  
        break  
      
    # Computer's turn  
    card = random.choice(computer_hand)  
    print("Do you have any", card, "?")  
    if card in player_hand:  
        # Remove the card from the player's hand  
        player_hand.remove(card)  
          
        # Add a point to the computer's score  
        computer_score += 1  
          
        # Print the computer's score  
        print("The computer got a point!")  
        print("Computer score:", computer_score)  
    else:
        # Go fish!  
        print("The computer goes fishing!")  
          
        # Draw a card from the deck  
        card = deck.pop()  
          
        # Add the card to the computer's hand  
        computer_hand.append(card)  
          
        # Print the card that was drawn  
        print("The computer drew a card.")  
          
    # Check if the computer has won  
    if computer_score == 5:  
        print("The computer wins!")  
        break  
```

**app.txt** に以下が書き込まれます。

```python
import random

# Define the deck of cards
deck = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'] * 4

# Shuffle the deck
random.shuffle(deck)

# Deal the cards
player_hand = deck[:5]
computer_hand = deck[5:10]

# Define the initial score
player_score = 0
computer_score = 0

# Define the main game loop
while len(deck) > 0:
    # Print the player's hand
    print("Your hand:", player_hand)

    # Ask the player for a card
    card = input("Do you have any... ")

    # Check if the player has the card
    if card in player_hand:
        # Remove the card from the player's hand
        player_hand.remove(card)

        # Add a point to the player's score
        player_score += 1

        # Print the player's score
        print("You got a point!")
        print("Your score:", player_score)
    else:
        # Go fish!
        print("Go fish!")

        # Draw a card from the deck
        card = deck.pop()

        # Add the card to the player's hand
        player_hand.append(card)

        # Print the card that was drawn
        print("You drew a", card)

    # Check if the player has won
    if player_score == 5:
        print("You win!")
        break

    # Computer's turn
    card = random.choice(computer_hand)
    print("Do you have any", card, "?")
    if card in player_hand:
        # Remove the card from the player's hand
        player_hand.remove(card)

        # Add a point to the computer's score
        computer_score += 1

        # Print the computer's score
        print("The computer got a point!")
        print("Computer score:", computer_score)
    else:
        # Go fish!
        print("The computer goes fishing!")

        # Draw a card from the deck
        card = deck.pop()

        # Add the card to the computer's hand
        computer_hand.append(card)

        # Print the card that was drawn
        print("The computer drew a", card)

    # Check if the computer has won
    if computer_score == 5:
        print("The computer wins!")
        break
```

修正内容：
- `while len(deck) < 0:` を `while len(deck) > 0:` に修正して、デッキのカードが残っている間繰り返すようにしました。
- `player_score -= 1` を `player_score += 1` に修正して、プレイヤーのスコアが正しく増えるようにしました。
- `print("You drew a card.")` を `print("The computer drew a", card)` に修正して、コンピュータがカードを引いたことを表示するようにしました。

