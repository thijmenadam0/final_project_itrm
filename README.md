# Final Project Introduction to Research Methods

This GitHub contains a README.md file, three bash scripts: one for obtaining the Twitter data from Karora (the RUG-server), one for pre-processing the data so it fits this research and one for counting the processed data. It also contains a small Python script for random months, so there is no bias in the research. The whole code is for counting the words ok/OK and oke/oké in Dutch Twitter (2021).

## Versions  
The Ubuntu version used is Ubuntu 20.04.3 LTS  
The Python version used is Python 3.8.10  
The twitter data collected is data from 2021, the months April, June, August and November (more on this below)  


## Month Randomizer
This code includes a month randomizer, with the month randomizer you can avoid cherry-picking data by using random months for the experiment. The months I used are April, June, August and November of 2021. I chose the year 2021 so the data is new in comparison to, for example, 2016. I only chose four months seeming that it takes a long time to process one month, using all twelve months was too much for the given amount of time. Randomitypographical errorzing these months gives us fair and representative data.  

You can run the month randomizer by using the following code:  

```$ python3 random_months.py```  

Here is the output of the randomized months when i first ran it:
![Output of my randomized months](images/output_random_months.png)

## Obtain the data
The way you can obtain the data I used is by using the following commands (when you have downloaded the github files.)  
The data that needs to be obtained is the text from tweets in 2021, in the months April, June, August and November.

The following commands are all with my own student number (s4882067). If you want to replicate this research, use your own RUG-number on the occassions where i used mine!

First you have to use the command:  
```$ scp get_text.sh s4882067@karora.let.rug.nl:/home/s4882067```  
Use your own RUG number ofcourse. This lets you upload the code to the karora server.

Then login to karora using your own RUG number:  
```$ ssh s4882067@karora.let.rug.nl```  

When you are logged into karora you can run bash script with:  
```$ bash get_text.sh```  

After you have done this (which will take a while), you can logout of karora with the command  
```$ logout```  

After you have logged out and copied the files you have to create a folder named 'alltweets'. After that you can download them to your pc with the following command. This also downloads them
to the chosen repository (alltweets):  
```
$ scp s4882067@karora.let.rug.nl:tweets202104.txt ./alltweets  
$ scp s4882067@karora.let.rug.nl:tweets202106.txt ./alltweets  
$ scp s4882067@karora.let.rug.nl:tweets202108.txt ./alltweets  
$ scp s4882067@karora.let.rug.nl:tweets202111.txt ./alltweets
```  

## Pre-processing the data

Once you have downloaded the complete data and made sure it's in the repository 'alltweets' you can use the command:  
``` bash get_ok_oke_data.sh ```  

This piece of code will remove all the Retweets in the data and find all times a tweet contains ok/OK or oke/oké and put these in a seperate file. This will also make two new files named all_ok.txt and all_oke.txt. These files contain the pre-processed data as explained above.

## Getting the results

The pre-processed data can then be used to get the results. The results are the amount of Tweets that use either of the words. A small script has been written for this and can be used by using the command  
``` bash ok_oke_counter.sh ```  

This command gives the output 

```
All the times a tweet contains ok or OK:  
164556  
All the times a tweet contains oke or oké:  
160591  
```

This means that ok/OK is in 164556 Tweets and oke/oké is in 160591 Tweets.
