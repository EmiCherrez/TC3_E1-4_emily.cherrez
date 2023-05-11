## Escriba un script que tome uno de estos archivos y determine el numero de filas y columnas
echo "conteo de las filas"
wc -l n10.txt
echo "regresion"
cat n10.txt | wc -l
echo "conteo del numero de columnas"
echo "se utiliza la primera linea"
head -n 1 n10.txt
echo "eliminacion de los espacios y del terminador de linea"
head -n 1 n10.txt | tr -d ' ' | tr -d '\n'
echo "conteo de caracteres"
head -n 1 n10.txt | tr -d ' ' | tr -d '\n' | wc -c
## Escriba u script que imprima el numero de filas y columnas para cada red
echo "impresion del numero de filas y columnas para cada red"
bash TC3_E3.2.sh
## Cual es la red con el mayot numero de filas? Cual es el que tiene mayor numero de columna?
echo "red con mas filas"
bash TC3_E3.2.sh | sort -n -r -k 2 | head -n 1
echo "red con mas columnas"
bash TC3_E3.2.sh | sort -n -r -k 3 | head -n 1
