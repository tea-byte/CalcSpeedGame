# CalcSpeedGame

スマートフォンのアプリケーション開発に興味があり今回、計算ゲームを制作しました。

なぜ、計算ゲームにしたか
・　アプリを制作するにあったて、自分が欲しいものを考えた時に、私は暗算が苦手だったので暗算力を強化するために手軽に暗算の練習ができるアプリを制作したいと思い制作しました。

具体的な内容
  足し算モード、引き算モード、掛け算モード、割り算モード、総合モードの5つのモードから一つ選択し、30秒以内にどれだけ正解することができるかを測るゲームです。1問正解するとプラス10P、1問間違えるとマイナス10Pというルールに
  なっており、30秒後に自分のポイントが表示されます。


工夫点
 ・答えの入力を4択にする。
 
 ・問題範囲を数字で指定で指定することができる。（例　1〜20まで）
 
  有名な計算ゲームを使用してみたところ、
   ・　答えの入力方式が電卓形式である。
   ・問題範囲が桁数のみの指定指定しかできない。（例　1桁、2桁、3桁　等）
  という点があったため、私は
   ・答えの入力を4択にする。
   ・問題範囲を数字で指定で指定することができる。（例　1〜20まで）
   という2点を工夫して制作しました。このことにより、 
    ・片手での操作がしやすい。
    ・より具体的に自分が練習したい数値を指定できる。
   が可能になったと思っております。

大変だった点
　・問題の設定画面でした値を計算画面に渡すこと。
　 　問題を設定するプログラムで設定した変数を問題を出すプログラムの変数に渡す時に、問題を設定する画面で設定した内容が反映されずに渡されることがあったのでこの問題を解決するのに苦労しました。
   
プログラムの説明
  ViewController
   ゲームのホーム画面です。モード選択画面と問題設定画面、ハイスコア確認画面の3つと繋がっています。
  ModeViewController
   モード選択画面です。足し算モード、引き算モード、掛け算モード、割り算モード、総合モードの5つのモードを選択できます。
  SetViewController
    問題範囲を1〜99の範囲で指定できます。それぞれのモード別に範囲を指定することができるので,足し算は1〜99の範囲、掛け算は1〜50までなど細かく問題範囲を指定することが可能です。
  HighScoreViewController
    各モード別の最高スコアを表示している画面です。
  CalcViewContorroer
    問題を解く画面です。SetViewControllerで指定した問題範囲の中で出題され、4択の中から正解を選びます.
  ResultViewController
    獲得したポイントと今までのハイスコアを表示する画面です。
  Sound.swift
    音楽を鳴らすためのプログラムです。
  correct.swift, incorrect.mp3
    問題に正解、不正解したときになる音楽です。
   
    
作成情報を列挙する

作成者　今別府　勇吾
所属　　北九州市立大学　国際環境工学部　情報メディア工学科　
E-mail　y7531016＠eng.kitakyu-u.ac.jp

