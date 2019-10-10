
cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | grep "male" | sort --version-sort | uniq >> genderyears.csv
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | grep "male" | sort -k3 --version-sort | tail -n 1 
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | grep "male" | sort -k3 --version-sort | head -n 1 
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | grep "male" | sort -k3 --version-sort | tail -n 10 | grep "female" | wc -l  
