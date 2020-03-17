#date=0317
#check the subspecies information of gorillas
awk '{print $1,$2}' GorgorWholeGen.ped  

# picked 4 individuals of each subspecies(3*4 + 1Ggd)
nano sampleID.txt 
# select
Gbb-Maisha Gbb-Maisha
Gbb-N010_Turimaso Gbb-N010_Turimaso
Gbb-Umurimo Gbb-Umurimo
Gbg-A929_Kaisi Gbg-A929_Kaisi
Gbg-N011_Pinga Gbg-N011_Pinga
Gbg-N012_Dunia Gbg-N012_Dunia
Ggd-B646_Nyango Ggd-B646_Nyango
Ggg-A932_Mimi Ggg-A932_Mimi
Ggg-KB5792_Carolyn Ggg-KB5792_Carolyn
Ggg-X00108_Abe Ggg-X00108_Abe

#make bed file for whole genome file of all individuals
plink --file GorgorWholeGen --make-bed --out GorgorWholeGen 
#pick the whole genomen of 4 individuals we want
plink --bfile GorgorWholeGen --noweb --keep sampleID.txt --recode --out ../datatest21/testdata
#make bed file for whole genome file of 4 individuals we want 
plink --file testdata --make-bed --out testdata
#pick chromosome 21 of 4 individuals 
plink --bfile testdata --chr 21 --out test21

#########END###########
