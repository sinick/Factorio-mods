#!/bin/bash
# Require library jq (install via chocolatey)

generate_archive()
{
    if [ -d $1 ] 
    then
        modname=`cat $1/info.json|jq -r .name`
        modver=`cat $1/info.json|jq -r .version`
        
        for f in ${modname}_*.zip
        do if [ -f $f ]; then rm "$f"; fi
        done

        git archive --prefix "$1/${modname}_$modver/" -o "${modname}_$modver.zip" HEAD
    fi
}

if [ -z "$1" ]
then 
    for D in */; do generate_archive "$D"; done
else
    generate_archive $1
fi