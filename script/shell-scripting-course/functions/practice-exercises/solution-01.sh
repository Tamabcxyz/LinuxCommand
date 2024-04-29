#!/bin/bash

function file_count() {
   local NUMBER_OF_FILES=$(ls | wc -l)
   echo "$NUMBER_OF_FILES"
}

function only_file_count() {
   local NUMBER_OF_FILES=$(find . -type f | wc -l)
   echo "$NUMBER_OF_FILES"
}

file_count
only_file_count
