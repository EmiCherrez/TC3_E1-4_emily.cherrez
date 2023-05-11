## Escriba un script que, para un archivo csv dado y numero de columna, imprime:
## -nombre de la columna
## -numero de valores distintos
## -valor minimo
## -valor maximo
echo "extraccion del nombre de la columna"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | head -n 1
echo "numero de valores distintos"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
echo "valor maximo"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
echo "valor minimo"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
