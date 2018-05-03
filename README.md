# BASH practice


#### ヒアドキュメント展開無し
`dirname="/home/aaa"`  
`cat << 'END'`  
`command .....`  
`usage:.....`  
`$dirname`  
`END`  

`[output]`  
`command .....`  
`usage:.....`  
`$dirname`  


#### ヒアドキュメント展開有り
`dirname="/home/aaa"`  
`cat << END`  
`command .....`  
`usage:.....`  
`$dirname`  
`END`  

`[output]`  
`command .....`  
`usage:.....`  
`/home/aaa`  

#### デバッグ
set -u # 未定義変数を参照時エラー  
set -e # コマンド終了ステータス0以外であったら即終了  
set -x # コマンドを展開した後の内容を表示  
set -v # 実行前にコマンドラインの内容表示  

#### logging(/var/log/messages)
logger -t TEST "test messages" #これは/var/log/messagesに出力可能 -t でタグ付けしてgrepすればOK

#### 関数の戻り値
returnで何か呼び出し元に渡すには、returnはできない。

`function hoge () {`  
`  hoge=HOGE`  
`  return $hoge <= return `  
`}`  
`$foo=$(hoge) <= hoge関数の戻り値を取り出せないはず。`  

修正版
returnで何か呼び出し元に渡すには、echoにした方がいい。

`function hoge () {`  
`  hoge=HOGE`  
`  echo $hoge <= echo `  
`}`  
`$foo=$(hoge) <= hoge関数の戻り値を取り出せる。`  
