# Configuracon_Despliegue_Cluster_Hadoop_HDFS
Este repositorio contiene la documentación y el paso a paso de un taller práctico centrado en la implementación del Sistema de Ficheros Distribuido Hadoop (HDFS). El objetivo principal de este proyecto es configurar un clúster desde cero y probar sus comandos principales, orientados al procesamiento de alto volumen de datos

**Autor:** Cristian Camilo Cardozo Amin
**Institución:** Pontificia Universidad Javeriana

---

## Arquitectura del Sistema
El clúster está configurado bajo un modelo tradicional de maestro y esclavo:
* **NameNode (Maestro):** Es el nodo central que controla el sistema y administra los metadatos.
* **DataNodes (Esclavos/Workers):** Son los múltiples nodos encargados de almacenar físicamente los bloques de datos.

---

## Configuración Principal
Para levantar el entorno, se realizaron las siguientes configuraciones clave:
* **Versión Base:** Se utilizó la versión 3.5.0 de Hadoop.
* **Variables de Entorno:** Se configuraron las rutas de instalación de Java y Hadoop en los ficheros `hadoop-env.sh` y `.bashrc` en cada nodo del clúster.
* **Propiedades HDFS (`hdfs-site.xml`):** Se definieron las rutas de almacenamiento para el maestro y los trabajadores. Se estableció un factor de replicación de 2 para garantizar la tolerancia a fallos y evitar la pérdida de información.
* **Conexión de Nodos:** Se registraron las máquinas esclavas en el archivo central `workers` utilizando sus nombres de red.
* **Preparación de Directorios:** Se crearon las carpetas físicas para el `NameNode` en el servidor principal y para los `DataNode` en cada trabajador, otorgándoles permisos totales de lectura y escritura.

---

## Comandos HDFS Implementados
Una vez configurado el clúster, se ejecutaron pruebas de interacción física para validar las operaciones de lectura y escritura. Los comandos documentados son:

* `hdfs dfs -ls /`: Lista el contenido, permisos y detalles del directorio en HDFS.
* `hdfs dfs -mkdir`: Crea nuevos directorios dentro del sistema distribuido.
* `hdfs dfs -put`: Sube o transfiere archivos desde el disco local hacia el clúster HDFS.
* `hdfs dfs -cat`: Lee e inspecciona el contenido de los archivos directamente en la consola.
* `hdfs dfs -get`: Descarga archivos desde HDFS hacia la máquina local.
* `hdfs dfs -cp`: Copia o mueve archivos entre diferentes directorios internamente en HDFS.
* `hdfs dfs -rm`: Elimina carpetas y realiza limpieza de datos.

---

## Conclusiones y Resultados
* Se logró configurar exitosamente el entorno de Hadoop HDFS para el almacenamiento distribuido.
* Las pruebas confirmaron que los directorios administran correctamente los archivos y que los datos se guardan y recuperan sin problemas.
* Se comprobó que el uso de réplicas en HDFS mejora notablemente la disponibilidad de los datos.
* Se validó la integración del clúster para la lectura y escritura funcional mediante scripts adicionales.
