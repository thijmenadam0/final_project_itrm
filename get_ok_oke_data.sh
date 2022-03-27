#
#
#


# Gives all times the word ok/OK was used in the given txt files
function find_ok {

    cat alltweets/*.txt | grep -wi -e 'ok' |\

    #removes all the Retweets
    sed '/^RT/d'

}

# Gives all times oke/oké was used in the given txt files.
function find_oke {

    cat alltweets/*.txt | grep -wi -e 'oke' -e 'oké' |\
    sed '/^RT/d' 

}

echo "finds all the time ok/OK (case-insensitive) appears in the given corpus, output gives a text file named 'all_oke.txt'."
find_ok > all_ok.txt
echo "finds all the time oke/oké (case-insensitive) appears in the given corpus, output gives a text file named 'all_oke.txt'."
find_oke > all_oke.txt

