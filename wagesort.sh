
cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | grep "male" | sort --version-sort | uniq >> genderyears.csv

