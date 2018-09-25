#!/bin/bash

scriptpath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
projectname=
projectpath=

while [ "$1" != "" ]; do
    case $1 in
        -p | --path )   shift
                        projectpath=$1
                        ;;
        -n | --name )   shift
                        projectname=$1
                        ;;
        * )             echo "*** Error: unrecognized command line parameter: $1"
                        exit 1
    esac
    shift
done

if [ "$projectpath" != "" ]; then
    if [ ! -d "$projectpath" ]; then
        echo "$projectpath does not exist, creating directory..."
        mkdir "$projectpath"
        if [ $? -ne 0 ]; then
            echo "*** Error: Cannot create directory $projectpath"
            exit 1
        fi
    fi
    cp -rf "$scriptpath/." "$projectpath/"
    if [ $? -ne 0 ]; then
        echo "*** Error: Cannot copy files to $projectpath"
        exit 1
    fi
    rm -rf "$projectpath/.git"
    if [ $? -ne 0 ]; then
        echo "*** Error: Cannot remove .git directory from $projectpath"
        exit 1
    fi
    if [ "$projectname" != "" ]; then
        sed -i 's|${project_name}|'"${projectname}"'|g' "$projectpath/configure.ac"
        sed -i 's|${project_name}|'"${projectname}"'|g' "$projectpath/src/Makefile.am"
        sed -i 's|${project_name}|'"${projectname}"'|g' "$projectpath/test/Makefile.am"
        AUTORECONF="$(which autoreconf)"
        if test -z "$AUTORECONF"
        then
            echo "*** Error: cannot find autoreconf"
            exit 1
        fi
        cd "$projectpath" && "$AUTORECONF" --force --install --verbose -I m4 || exit $?
    fi
fi


