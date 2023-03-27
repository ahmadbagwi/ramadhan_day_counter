#!/bin/bash
ramadhan=30
hari=5
ulang=4
arrwait=("w" "a" "i" "t" "i" "n" "g")
ayat="Wahai orang-orang yang beriman! Diwajibkan atas kamu berpuasa sebagaimana diwajibkan atas orang sebelum kamu agar kamu bertakwa (Al-Baqarah 183)"
source="get source: git@github.com:ahmadbagwi/ramadhan_day_counter.git"
complete() {
    for (( g = 1; g <= $ulang; g++ )); do
        for (( h = $ulang; h >= g; h-- )); do
            printf "="
            sleep 0.07
        done
    done
}

waiting() {
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
    sleep 0.9
    for (( i=1; i<=$ramadhan; i++ )); do
        if [[ $i -le $hari ]]
        then
            echo -n "Day $i " 
            complete ulang 
            echo " 100"
        else
            echo -n "Day $i "
            waiting
            echo ""
        fi
    done
    sleep 0.8
    echo $source
}

cekramadhan $ramadhan $hari $ayat $source