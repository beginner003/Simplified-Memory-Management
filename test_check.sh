#!/bin/bash

for i in {1..5}
do
    ./smm < ./testcase_given/given${i}.txt > output${i}.txt
    echo "Comparing output${i}.txt with out_given${i}.txt:"
    diff --side-by-side output${i}.txt ./testcase_given/out_given${i}.txt
    echo "----------------------------------------"
done