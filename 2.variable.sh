#!/bin/bash

#syntax VARIABLE -DATA
a=10		# number
b=xyz	#Charectors
c=true	#Boolean
d=0.01	#Floot

#ye you have different data types, shell will consider everything but the combination of any of the above
# mainly string is combination of numbers and characters

# How to access that
# $variable name or ${Variable name}

echo $a

# some times you may need to store multiple values in a single variable.
# in shell we call it as army. in some scripting languages this is called as a list

ARRAY=(1 2 abc 20 o 0 1)

# Single army can hold multiple data types, of course in shell everything is a string.

# How to access a particular value

echo INDEX0 - ${ARRAY[0]}

# since we are accessing the arrays with index in shell we call it as index arrays.

# Alternative  to that your army be accesses with NAME as well, that becomes Named arrays and in others scripting languages it called as MAP.

declare -A MYMAP=( [course]=DevOps [time]=0730 [zone]=IST )

echo "Welcome to ${MYMAP[course]} Training. Timing is ${MYMAP[time]} ${MYMAP[zone]}"

# why use variables in shell? we declare particular word or some thing and want to repeat multiple times as same word in the script.

# variable names can contain, NAMES, CHARTERS & _   (under score), you cannot use special character like * ,? : …

# also variable cannot start with number, 1a is wrong and a1 is right variable.
# most of the times we need the data while running the script.
#we can execute a command and that command out put can be stored in variable.

DATE=$date +%F		# Command substituting
echo -e "Welcome to DevOps Training, Today date is $date"

# one more dynamic variables can be done by using Athematic expressions


ADD=$VALUE=${(20+20)-4*2/6} 	# Arthimatic substitutions ${()}
echo VALUE = $VALUE
