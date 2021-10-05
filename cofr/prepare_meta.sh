#!/bin/bash

pip3 install -r requirements.txt

yes | wget https://storage.googleapis.com/bert_models/2018_11_23/multi_cased_L-12_H-768_A-12.zip
yes | unzip multi_cased_L-12_H-768_A-12.zip
yes | rm multi_cased_L-12_H-768_A-12.zip

yes | bash -x -e setup_all.sh
yes | bash -x -e setup_models_dem1921.sh
yes | bash -x -e setup_corpus_dem1921.sh
yes | head -n 5 test.french.jsonlines | shuf | head -n 1 > myfile.jsonlines