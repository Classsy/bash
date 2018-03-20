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
