#!/bin/bash
users_id=(71665538 66146765 132961968 15096445 172753273 54152646)
for users_id in ${users_id[*]} 
do
         curl=$(curl -s "api.mercadolibre.com/users/$users_id/shipping_preferences" | jq -c
'.services')
          echo "$users_id: $curl"
done
#-----------------------------------------------------------------EXPLICACION LINEA POR LINEA ----------------------------------------

#Linea 2 --- declara la variable user_id con los id de los usuarios

#Linea 3 --- bucle for, el cual expresa, para la variable users_id, recorre todo lo que tengo en la variable users_id separado por espacios

#Linea 4 --- Le indica lo que va a hacer con la sentencia "do" en  cada dato recorrido 

#Linea5 --- se declara la variable curl, la cual ejecutara el comando curl para consumir la api con  la bandera -s para que no nos muestre mensajes de error y la salida de ese comando se la pasa al comando jq -c #el cual permite hacer operaciones con archivos json y con la bandera -c se busca el dato que contiene la clave '.services'.

#Linea 7 ---  Nos imprimira como resultado final el user_id de los usuarios y su correspondientes '.services' del shiping_preference

#Este script nos debe imprimir 6 lineas
