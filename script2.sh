
#!/bin/bash

PALABRA="Linux"
RESUMEN="resumen.txt"

echo "=== Ejecutando comandos sobre los ficheros ==="

echo
echo "=== Mostrando el contenido de fichero1.txt ==="
cat fichero1.txt

echo
echo "=== Mostrando el contenido de fichero2.txt ==="
cat fichero2.txt

echo
echo "=== Contando líneas de cada fichero ==="

LINEAS_FICHERO1=$(wc -l < fichero1.txt)
LINEAS_FICHERO2=$(wc -l < fichero2.txt)

echo "fichero1.txt tiene $LINEAS_FICHERO1 líneas"
echo "fichero2.txt tiene $LINEAS_FICHERO2 líneas"

echo
echo "=== Buscando la palabra '$PALABRA' en los ficheros ==="

grep -n "$PALABRA" fichero1.txt fichero2.txt

echo
echo "=== Creando resumen en $RESUMEN ==="

cat > "$RESUMEN" << EOF
Resumen de análisis de ficheros

Fichero analizado: fichero1.txt
Número de líneas: $LINEAS_FICHERO1

Fichero analizado: fichero2.txt
Número de líneas: $LINEAS_FICHERO2

Palabra buscada: $PALABRA

Resultados de la búsqueda:
EOF

grep -n "$PALABRA" fichero1.txt fichero2.txt >> "$RESUMEN"

echo
echo "=== Contenido del resumen ==="
cat "$RESUMEN"

echo
echo "=== Añadiendo cambios al repositorio Git ==="

git add fichero1.txt fichero2.txt "$RESUMEN"

echo
echo "=== Mostrando estado final del repositorio ==="

git status
