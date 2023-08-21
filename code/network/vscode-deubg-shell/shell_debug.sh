#!/usr/bin/env bash

test_str="test string demo"

if [[ "${test_str}" == *"test"* ]]; then
    echo "${test_str} contains: test"
fi

test_arr=(a b c d)

for item in ${test_arr[@]}; do
    echo "${item}"
done


