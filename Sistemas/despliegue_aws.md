Para poder crear la máquina virtual tenemos que abrir el laboratorio e iniciarlo para poder acceder a Amazon Web Services.
Tras ello tenemos que usar el servicio de EC2 para poder crear la máquina virtual

![image](https://github.com/user-attachments/assets/dd6ba2e3-2a74-446b-a8cd-f8db5c03f984)

En el menú de la izquierda le damos a instancias, después le tenemos que dar a Lanzar Instancias para poder crear un nueva.

![image](https://github.com/user-attachments/assets/4405fd07-35f8-4406-890c-687fb5d13a93)

Una vez dentro realizamos unas configuraciones básicas para preparar la máquina con las especificaciones que necesitemos, en este caso configuramos el nombre y seleccionamos que sea de Ubuntu.

![image](https://github.com/user-attachments/assets/07420438-398e-4df2-b5bc-1a21e8cb1324)

Por defecto dejaremos varias configuraciones predeterminadas pero tenemos que modificar algunas que son el Par de claves en el cual seleccionamos el "Vockey".

![image](https://github.com/user-attachments/assets/d9e9f8e2-3d81-40e9-bb30-0f7eb678733d)

Después tenemos que habilitar que se pueda permitir el tráfico tanto de HTTP como de HTTPS en Internet, por último lanzamos la instancia.

![image](https://github.com/user-attachments/assets/77394f8d-0da3-4e3c-bcf8-439b38db1126)

Ya con la instancia ya creada para subir la página web mediante un servidor tenemos que primero descargar el servidor web que usaremos que en este caso sería Filezilla
Que lo único que tenemos que realizar es descargarlo desde su web
Tras descargarlo abrimos el Filezilla

![image](https://github.com/user-attachments/assets/ec060c20-864f-4547-b5b5-fdb4bf3ca030)

En el menu de arriba le damos a Archivo y gestor de sitios
En ella realizamos configuraciones básicas como pegar el DNS publico de la instancia, el puerto y el usuario y contraseña

![image](https://github.com/user-attachments/assets/4ba8b92d-21de-4694-a4c2-45226ed28835)

Aceptamos y finalmente esperamos a que termine de cargar

![image](https://github.com/user-attachments/assets/c67e21c3-1e67-40ac-a612-97002f674322)

Cuando termine de cargar arrastramos al perfil que nos hemos creado la carpeta con la pagina web y esperamos a que cargue de nuevo 

![image](https://github.com/user-attachments/assets/f926e83f-e315-466d-8d45-3e7f81e89578)

Por utlimo tenemos que entrar en la instancia de AWS, darle a conectar y nos vamos a Cliente SSH y copiamos el ejemplo 

![image](https://github.com/user-attachments/assets/bebac4d6-0a8d-4f4f-9209-466368e701fb)

Tras copiar el ejemplo nos vamos a la carpeta en la cual estan los archivos Vockey que esta para descargarlos al iniciar el AWS

![image](https://github.com/user-attachments/assets/b25f294d-3cea-4bb5-baa3-e348d702b79d)

Estando dentro de la carpeta tenemos que darle click derecho y abrir en la terminal y pegamos el ejemplo 

![image](https://github.com/user-attachments/assets/29d4dfea-6538-4db5-9f15-a39346c0a905)

Tras ello actualizamos con "sudo apt update" e instalamos el tasksel con el comando "sudo apt install tasksel"

![image](https://github.com/user-attachments/assets/edfdd5fe-c6e5-4134-8943-353f19a0fb84)

Cuando se instale usamos el comando "sudo tasksel" y en ese menu que se nos va a aabrir marcamos el web Server

![image](https://github.com/user-attachments/assets/2320abcb-01e3-43c9-a233-c4d16137b486)

Continuamos y escribimos los siguientes comandos "sudo cp -r NombredelArchivo /var/www/html" y despues un ls 

![image](https://github.com/user-attachments/assets/0d9200f7-08ac-4b73-a4ba-bf940cdf1714)

Ahora si abrimos el navegador y pegamos la DNS publica de la instancia, tras ello una / y el nombre de la carpeta en este caso LLMM

![image](https://github.com/user-attachments/assets/bf1b4183-8225-41a6-8ead-891e0f86618e)




















