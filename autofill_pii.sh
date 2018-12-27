#!/usr/bin/env bash

INPUT_FILE="resume.tex"
OUTPUT_FILE="resume.final.tex"

source pii.sh
cp $INPUT_FILE $OUTPUT_FILE
sed -i -e "s/::name::/${name}/g" $OUTPUT_FILE
sed -i -e "s/::email::/${email}/g" $OUTPUT_FILE
sed -i -e "s/::phone::/${phone}/g" $OUTPUT_FILE
sed -i -e "s/::website::/${website}/g" $OUTPUT_FILE
sed -i -e "s/::university name::/${university_name}/g" $OUTPUT_FILE
sed -i -e "s/::university city::/${university_city}/g" $OUTPUT_FILE
sed -i -e "s/::company 1 name::/${company_1_name}/g" $OUTPUT_FILE
sed -i -e "s/::company 1 city::/${company_1_city}/g" $OUTPUT_FILE
sed -i -e "s/::company 2 name::/${company_2_name}/g" $OUTPUT_FILE
sed -i -e "s/::company 2 city::/${company_2_city}/g" $OUTPUT_FILE
sed -i -e "s/::company 3 name::/${company_3_name}/g" $OUTPUT_FILE
sed -i -e "s/::company 3 city::/${company_3_city}/g" $OUTPUT_FILE
cat $OUTPUT_FILE
