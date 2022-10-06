dna=$(cat fasta.fa|egrep -v '>'|tr -d '\n'|sed 's/ATG/ \tATG/g'|sed 's/TAA/TAA\t/g')
echo $dna

for line in $dna
do
	if [[ $line =~ ^ATG.+TAA$ ]] 
	then
		lenght=${#line}
		echo $line
		echo $lenght
	fi	
done
