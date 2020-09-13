#!/bin/bash
echo hello
# print multi line with \n and tab space with \t
echo -e "welcome to my devops \n\t Topic is shell scripting"
echo it is print command
# some programming languages multiple lines are done with \3n , but in echo in shell we don’t have that, we have to use \n\n\n
# some times to grab the attention of the user we need to print text in bold, underline and even some colours.
# syntax for enabling this is : echo -e “-e”[COL-CODEmMESSAGE\e[0m”
# echo - print message
# -e to enable colours with \e
# \e - enable colour
# [COL-CODE -some colour code
# m - find of colour code
# MESSAGE - message to print
# \e - enable one more colour
# [0m - zero is going to disable the colour
# colour coding ref: https://misc.flogisoft.com/bash/tip_colors_and_formatting

## colour codes
# 1 - Bold
# 4 - underline
# 31 - red
# 32 - green
# 33 - yellow
# 34 - blue
# 35 - magenta
# 36 - cyan
echo -e "\e[1mHello world in Bold text\e[0m"
echo -e "\e[1mHello World in Bold text\e[0m"
echo -e "\e[4mHello Wotld in Underlined text \e[0m"

echo -e "\e[31mHello World in Red colour\e[0m"
echo -e "Yellow colour, but only \e[33mYellow\e[0m word is yellow colour"

## Background colours:
# 41 - red
# 42 - green
# 43 - yellow
# 44 - blue
# 45 - magenta
# 46 - cyan
echo -e "\e[45mGreen background\e[0m"

## Combinations can be done
echo -e "\e[42;31;4m red on green with underline \e[0m"
