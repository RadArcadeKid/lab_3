#!/bin/bash
# Authors : Jake Henson
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#1 use variables to import filename
echo "File Name:"
read fileName

echo "Enter a regex command: "
read regCommand

echo $'' #new line

#2 use egrep to output whatever command
egrep $regCommand $fileName

echo $''

#3 Output number of phone numbers using egrep, searches all characters 0-9 for each section, delimited by a -
egrep -c "[0-9]{3}\-[0-9]{3}\-[0-9]{4}$" $fileName
echo $''

#4.1 count number of emails, search all characters before the @, then anything in bettween, then everything after the .
egrep -c ".++\@[A-Za-z0-9_.]+\..+" $fileName
echo $''

#4.2 list phone numbers with 303, replace the first [0-9] with literally '303'
egrep "303\-[0-9]{3}\-[0-9]{4}$" $fileName
echo $''

#4.3 output anything with "geocities" to the email_results file, use the same as before, but just restrict everything after the @ with geocities.com
egrep "@geocities.com$" $filename >> email_results.txt
