## tamano del archico 
echo "para el tamano del archivo ejecutamos el siguiente codigo"
ls -lh ../data/Marra2014_data.fasta
## copia de Marra2014_data.fasta en sandbox
echo "para crear la copia en sandbox de Marra2014_data.fasta y nombrarla se ejecuta el codigo"
cp ../data/Marra2014_data.fasta my_file.fasta
## saber cuando contigs se clasifican como isogrupo00036
echo "para saber cuantos son isogrupo00036 se ejecuta el codigo"
grep -c isogrupo00036 my_file.fasta
## separacion del delimitador original de los espacios
echo "para separarar se utiliza el siguiente codigo"
cat my_file.fasta | tr -s ' ' ',' | head -n 3
## guardar con un sobrescrito de archivo temporal
echo "para guardar con un sobrescrito temporal el archivo se ejecuta lo siguiente"
cat my_file.fasta | tr -s ' ' ',' > my_file.tmp
mv my_file.tm my_file.fasta
## para saber cuantos isogrupos unicos hay en el archivo
echo "para saber cuantos isogrupos unicos hay en el archivo se ejecuta el siguiente codigo"
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l
## para saber que contig tiene el mayor numero de lectura
echo "para saber que contig tiene el mayor numero de lectura se usa el siguiente codigo"
grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 3
## para ordenar segun el numero de lee
echo "para ordenar segun el numero de lee se utiliza el siguiente codigo"
grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n | head -n 5 
