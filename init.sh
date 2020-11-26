#!/bin/bash

init() {
    arr=( "Scenes" "Prefabs" "Scripts" "Animations" "Materials" "Physics Materials" "Fonts" "Textures" "Audio" "Resources" "Editor" "Plugins" )
    for var in "${arr[@]}"; do 
        mkdir Assets/"$var"
    done
    curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/master/Unity.gitignore
    curl -o .gitattributes https://gist.githubusercontent.com/nemotoo/b8a1c3a0f1225bb9231979f389fd4f3f/raw/15f60a55a50b5c058de5e14369051ed268db0c77/.gitattributes
}

if [ -e Assets ]; then 
    echo "Run"
    init
fi
