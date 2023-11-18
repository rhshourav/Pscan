#!/bin/bash

lol=$(whereis lolcat)

if [[ $lol != "lolcat: /home/desck/.local/bin/lolcat" ]]
then
 pip install lolcat
fi
tq=$(which tqdm)

if [[ $tq != "/home/desck/.local/bin/tqdm" ]]
then
	pip install tqdm
fi

