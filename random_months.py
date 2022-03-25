# File name: random_months.py
# This program gives three random months as output, these can't be
# duplicate months. By making the program random and taking the
# months the output gives, the data cannot be cherry-picked.
# Author: Thijmen Adam
# Date: 25-03-2022

import random


def main():

    month_list = ["January", "February", "March", "April", "May", "June",
                  "July", "August", "September", "October", "November",
                  "December"]
    months = random.sample(range(11), 4)
    months.sort()
    for month in months:
        print("One of the months to check is: " + month_list[month])


if __name__ == "__main__":
    main()
