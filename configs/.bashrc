# Variables de entorno Java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Variables de entorno de Hadoop
export HADOOP_HOME=/mnt/Cluster/Hadoop
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

# Librerías y PATH
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

# Usuarios de ejecución
export HDFS_NAMENODE_USER="usuario"
export HDFS_DATANODE_USER="usuario"
export HDFS_SECONDARYNAMENODE_USER="usuario"
