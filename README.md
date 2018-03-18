# BASH practice


ヒアドキュメント展開無し
dirname="/home/aaa"
cat << 'END'
command .....
usage:.....
$dirname
END

[output]
command .....
usage:.....
$dirname


ヒアドキュメント展開有り
dirname="/home/aaa"
cat << END
command .....
usage:.....
$dirname
END

[output]
command .....
usage:.....
/home/aaa

