Lo que tiene que hacer la MASTER:
--para subir un archivo: 
touch archivo.txt
git add archivo.txt (IGUAL PARA ELIMINAR)
git commit -m archivo.txt
git push
--para descargar un archivo de la rama Sebas:
git pull origin Sebas




##############################


Lo que tiene que hacer el SEBAS:
--para subir un archivo: 
touch archivo.txt
git add archivo.txt (IGUAL PARA ELIMINAR)
git commit -m archivo.txt
git push Sebas Sebas
--para descargar un archivo de la rama master:
git pull origin master




#####################
Para saber cual rama somos : git branch
PAra cambiarnos de rama: git checkout <RAMA>
Para crear una rama git checkout -b <Nombre RAMA>
Para mostrar info de la rama: git remote show <RAMA> 



%%%%%%%%%%%%%%%%%%%%%

CORRER en MATLAB /usr/local/matlab/bin/matlab -nojvm  < miScript.m