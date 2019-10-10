
cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g' | grep "male" | sort --version-sort | uniq >> genderyears.csv

echo "Highest earner"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | grep "male" | sort -k3 --version-sort | tail -n 1 

echo "Lowest earner"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | grep "male" | sort -k3 --version-sort | head -n 1 

echo "Number of females in top ten earners"
cat wages.csv | cut -d , -f 1,2,4 | sed 's/,/ /g' | grep "male" | sort -k3 --version-sort | tail -n 10 | grep "female" | wc -l  


val1=$(cat wages.csv | cut -d , -f 3,4 | grep "16," | cut -d , -f 2 | sort -n | head -n 1)
val2=$(cat wages.csv | cut -d , -f 3,4 | grep "12," | cut -d , -f 2 | sort -n | head -n 1)

echo "$val1 - $val2" | bc

