#!/bin/bash
# File name: get_text.sh
# Description: Gets the text needed for the project I used. Downloading to your pc can be done following the code on
# https://github.com/thijmenadam0/final_project_itrm.git
# Author: Thijmen Adam
# Date: 25-03-2022

# BEFORE YOU DO ANYTHING USE THIS COMMAND! this uploads the get_text.sh file to your karora
# scp get_text.sh <RUG_number>@karora.let.rug.nl:/home/<RUG_number>
# Then login to karora and run this file. (This might take a while)

# Gets text from the four randomized months by random_months.py
zless /net/corpora/twitter2/Tweets/2021/04/*.out.gz | /net/corpora/twitter2/tools/tweet2tab text > tweets202104.txt

zless /net/corpora/twitter2/Tweets/2021/06/*.out.gz | /net/corpora/twitter2/tools/tweet2tab text > tweets202106.txt

zless /net/corpora/twitter2/Tweets/2021/08/*.out.gz | /net/corpora/twitter2/tools/tweet2tab text > tweets202108.txt

zless /net/corpora/twitter2/Tweets/2021/11/*.out.gz | /net/corpora/twitter2/tools/tweet2tab text > tweets202111.txt
