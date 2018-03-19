@test 'test' {
    value=$((5+5))
    [[ $value -eq 10 ]]
    }

@test 'air.sh' {
    run ../air.sh
    [ ${lines[0]} == "1" ]
    [ ${lines[1]} == "2" ]
    [ ${lines[2]} == "3" ]
    [ ${lines[3]} == "4" ]
    [ ${lines[4]} == "5" ]
    }


