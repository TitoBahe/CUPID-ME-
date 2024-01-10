
procent=0
timp=0
echo "Care este primul tau nume?"
        read numetau
echo "Care este varsta ta?"
        read varsta1
echo "Care este numele iubitului sau iubitei tale?"
        read nume2
echo "Și vârsta?"
        read varsta2

varsta (){
if [[ $1 -lt 25 ]]
        then
        timp=$(($1/10 + $2/20))
        echo "În $timp ani veți fi foarte fericiți împreună."
fi
}

dejavu ()
{
if [[ $1 -gt 60 ]] && [[ $2 -gt 60 ]]
        then
                echo "alegeți o casa: un apartament mic sau o vila mare?"
        select alegerea in apartament vila
        do
                case $alegerea in
                "apartament")
                        echo "sunteti o persoana introvertita."
                        touch introvertita
                        break
                        ;;
                "vila")
                        echo "Sunteti o persoana extrovertita."
                        mkdir extrovertita
                        break
                        ;;
                *)
                        echo "Încearcă din nou"
                        break
                        ;;
                esac
        done
fi
}

for ((i=0; i<${#numetau}; i++))
do
        litera1="${numetau:i:1}" #sintaxa insemna ca returneaza 1 caracter pe pozitia i.

for ((j=0; j<${#nume2}; j++))
do
        litera2="${nume2:j:1}"

if [[ "$litera2" == "$litera1" ]]
then
        procent=$(($procent + 13))
fi

done
done

if [ ${#numetau} -ne ${#nume2} ] #hastag returnează numarul de caractere cuvântului
then
        procent=$(($procent - 10))
else
        procent=$(($procent + 10))
fi

echo "Match-ul este de $(($procent + (RANDOM/1000)))%"

varsta "$varsta1" "$varsta2"
dejavu "$varsta1" "$varsta2"

