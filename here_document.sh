#!/bin/bash
#echo出力がめんどくさいときは便利

name="name_hoge"
id="id_hoge"
pass="pass_hoge"

cat << _EOF_
name = $name
id = $id
pass = $pass
_EOF_
