#!/bin/bash
ramadhan=30
hari=5
ulang=4
arrwait=("w" "a" "i" "t" "i" "n" "g")
ayat="Wahai orang-orang yang beriman! Diwajibkan atas kamu berpuasa sebagaimana diwajibkan atas orang sebelum kamu agar kamu bertakwa (Al-Baqarah 183)"
complete() {
    for (( g = 1; g <= $ulang; g++ )); do
        for (( h = $ulang; h >= g; h-- )); do
            printf "="
            sleep 0.08
        done
    done
}

waiting() {
    for (( j = 0; j < 1; j++ )); do
        printf "w"
        sleep 0.1
        printf "a"
        sleep 0.1
        printf "i"
        sleep 0.1
        printf "t"
        sleep 0.1
        printf "i"
        sleep 0.1
        printf "n"
        sleep 0.1
        printf "g"
        sleep 0.1
    done
}

waiting2() {
    for ((f=0; f<=7; f++ ))
    do 
        printf "${arrwait[$f]}"
        sleep 0.05
    done
}
cekramadhan() {
    echo "Ramadhan 1444H"
    sleep 0.8
    echo $ayat
    sleep 0.8
    for (( i=1; i<=$ramadhan; i++ )); do
        if [[ $i -le $hari ]]
        then
            echo -n "Day $i " 
            complete ulang 
            echo " 100"
        else
            echo -n "Day $i "
            waiting2
            echo ""
        fi
    done
}

cekramadhan $ramadhan $hari $ayat
# complete $ulang
# waiting2