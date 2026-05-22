# Ruta de instalación de Java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Archivos PID de los procesos
export HADOOP_PID_DIR=/mnt/sdal/Cluster/pid

# Librerías nativas
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
export HADOOP_COMMON_LIB_NATIVE_DIR="$HADOOP_HOME/lib/native/"

# Configuración NameNode para usar parallelGC con 4GB Java Heap
export HDFS_NAMENODE_OPTS="-XX:+UseParallelGC -Xmx4g"
