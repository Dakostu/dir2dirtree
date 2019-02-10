#!/bin/bash

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
		if [ -d $FOLDER ]  ;
		then
            splitName=$(basename $FOLDER)
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
        filename=$(basename $file | sed 's/[&_#$/]/\\&/g; s/\./$\\ldotp$/g; s/⁄/\//g')
        echo "."$LEVEL $filename"."
            if [ -d $file ];
            then
                traverse $file $((LEVEL+1))
            fi
        fi
    done

}

TEMPIFS=$IFS
IFS=$(echo -en "\n\b")
begin_traversing $1 0
IFS=$TEMPIFS
