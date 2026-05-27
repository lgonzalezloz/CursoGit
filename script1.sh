
#!/bin/bash

echo "=== Comprobando conexión con el repositorio de GitHub ==="

git remote -v

echo
echo "=== Actualizando información del repositorio público ==="

git pull

echo
echo "=== Creando dos ficheros de texto ==="

cat > fichero1.txt << EOF
Este es el primer fichero.
Contiene varias líneas de texto.
La palabra Linux aparece en este fichero.
GitHub se usa para alojar repositorios.
EOF

cat > fichero2.txt << EOF
Este es el segundo fichero.
También contiene varias líneas.
Estamos practicando comandos de Linux.
Este fichero será analizado por el script.
EOF

echo
echo "=== Ficheros creados correctamente ==="

ls -l fichero1.txt fichero2.txt

echo
echo "=== Estado del repositorio ==="

git status