#!/bin/bash

# dir2dirtree
# turn any directory into a LaTeX dirtree
# Daniel Kostuj, 2019
# See LICENSE file for licensing information


SED_FILTER_RULES_TEMP=$SED_FILTER_RULES
SED_FILTER_RULES='s/[&_#$/]/\\&/g; s/\ \./ $\\ldotp$/g; s/\.\ /$\\ldotp$ /g; s/⁄/\//g'

function begin_traversing {
    
    if [ -z $2 ];
    then
        local FOLDER=$PWD
        local LEVEL=$1
    else
        local FOLDER=$1
        local LEVEL=$2
    fi


    if [ $LEVEL -eq 0 ];	
	then
		if [ -d $FOLDER ];
		then
            splitName=$(basename $FOLDER | sed $SED_FILTER_RULES)
            echo "."$LEVEL $splitName"." 
			traverse $FOLDER $((LEVEL+1))
        else
            echo $FOLDER: Not a folder
            return 1
		fi
	fi

}

function traverse {

    local FOLDER=$1
    local LEVEL=$2
    	
	for file in $(find $FOLDER -maxdepth 1 | sort); do                    
        if [ $(basename $file) != $(basename $FOLDER) ];        
        then
            filename=$(basename $file | sed $SED_FILTER_RULES)
            echo "."$LEVEL $filename"."
            if [ -d $file ];
            then
                traverse $file $((LEVEL+1))
            fi
        fi
    done

}

TEMPIFS=$IFS
IFS=$(echo -e "\n\b")
begin_traversing $1 0
IFS=$TEMPIFS
SED_FILTER_RULES_=$SED_FILTER_RULES_TEMP
