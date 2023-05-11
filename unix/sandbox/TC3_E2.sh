## cuantas veces fueron los niveles de los individuos 3 y 27 grabados?
echo "para saber cuantas veces fueron los niveles de los individuos 3 y 27 se utiliza el codigo"
echo "se puede ver el archivo de la siguiente manera"
head -n 3 ../data/Gesquiere2011_data.csv
echo "para este caso solo se usa la columna 1"
cut -f 1 ../data/Gesquiere2011_data.csv | head -n 3
echo "para contar el numero de ocurrencia"
## identificacion masculina 3
echo "para la identificacion masculina 3 se usa el siguiente codigo"
cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 3
## identificacio masculina 27
echo "para la identificacion masculina 27 se usa el siguiente codigo"
cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 27
## ESCRIBA UN SCRIPT tomando como entrada el nombre del archivo y el DNI del individuo, devolviendo el numero de registro
echo "Script tomando como entrada el nombre del archivo y su DNI"
bash TC3_E2.2.sh ../data/Gesquiere2011_data.csv 27



