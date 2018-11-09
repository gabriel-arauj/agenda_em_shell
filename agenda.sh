#!/bin/bash

function salvar {
    echo "salvo!!"
    echo "${1},${2} " >> agendinha.txt
    sleep 1
}



function buscar_contao {
    count=0
    while read LINE
    do
        echo $LINE
        ARRAY[$count]=$LINE
        ((count++))
    done < agendinha.csv

    echo numero de elementos: ${#ARRAY[@]}
    # imprime conteudo do array 
    echo ${ARRAY[@]}
    sleep 1

}

function adiçao_de_contato {
    opcao=0
    nome="."
    telefone="         "
    while [ $opcao -eq 0 ]; do
        echo $(clear)
        echo "====== Agendinha do Gabriel ====="
        echo "|                                |"
        echo "| Nome: ${nome}                  "
        echo "| Telefone: ${telefone}            "
        echo "|                                |"
        echo "|   1. salvar                    |"
        echo "|   2. cancelar                  |"
        echo "|================================|"
    if [ "." = $nome ]; then
            echo -n "Digte o nome: "
            read nome
            echo -n "Digte o telefone: "
            read telefone
        else 
            echo -n "Escolha:"
            read opcao
        fi

        if [ $opcao -eq 1 ]; then
            salvar $nome $telefone 
        fi
        if [ $opcao -eq 2 ]; then
            echo "Cancelado!!"
            sleep 1
        fi

    done

}
function ediçao_de_contato {
    echo ola2   
}

function remoção_de_contato {
    echo sa
}







opcao=0
while [ $opcao -eq 0 ]; do
    echo $(clear)
    echo -e "Viva o \033[01;32mLinux\033[01;37m!" 
    echo "====== Agendinha do Gabriel ====="
    echo "|                                |"
    echo "|   1. buscar contato            |"
    echo "|   2. adição de contato         |"
    echo "|   3. edição de contato         |"
    echo "|   4. remoção de contato        |"
    echo "|                                |"
    echo "|================================|"
    echo -n " Escolha:"
    read opcao
    case $opcao in
        1) buscar_contao ;;
        2) adiçao_de_contato ;;
        3) ediçao_de_contato ;;
        4) remoção_de_contato ;;
        5) exit ;;
        *) opcao=0 ;;
    esac
    opcao=0
done