#!/bin/bash

echo "Importing keys..."

for file in keys/*
do
    gpg --import "$file"
done

# TODO: handle detached signatures
# TODO: use --output flag to extract
# signed data and place in assets directory
for file in signatures/*
do
    gpg --verify "$file"
done
