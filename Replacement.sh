#!/bin/sh
yes | sudo apt-get update
yes | sudo apt-get upgrade
yes | sudo apt install jq
cd /usr/local/
sudo touch hadoop.txt
sudo chmod 777 hadoop.txt
echo $HADOOP_HOME > hadoop.txt
remove=`awk 'FNR ==1 {print $1}' /usr/local/hadoop.txt`
#echo $remove
sudo rm -rf $remove
sudo rm -rf hadoop.txt

usar=`jq '.user' info.json`
sudo touch usar1.txt
sudo chmod 777 usar1.txt
echo $usar | sed "s/['\"]//g" > usar1.txt
usar1=`awk 'FNR ==1 {print $1}' /usr/local/usar1.txt`
sed -i '/PATH/d' /home/$usar1/.bashrc
sed -i '/HADOOP_HOME/d' /home/$usar1/.bashrc
sed -i '/HADOOP_MAPRED_HOME/d' /home/$usar1/.bashrc
sed -i '/HADOOP_COMMON_HOME/d' /home/$usar1/.bashrc
sed -i '/JAVA_HOME/d' /home/$usar1/.bashrc
sed -i '/HADOOP_HDFS_HOME/d' /home/$usar1/.bashrc
sed -i '/YARN_HOME/d' /home/$usar1/.bashrc
sed -i '/HADOOP_CONF_DIR/d' /home/$usar1/.bashrc
sed -i '/HADOOP_COMMON_local_NATIVE_DIR/d' /home/$usar1/.bashrc
sed -i '/SPARK_HOME/d' /home/$usar1/.bashrc
sed -i '/PYSPARK_PYTHON/d' /home/$usar1/.bashrc
sed -i '/PYSPARK_DRIVER_PYTHON/d' /home/$usar1/.bashrc
sed -i '/HIVE_HOME/d' /home/$usar1/.bashrc

cd /usr/local/
sudo rm -rf usar1.txt

sudo touch spark.txt
sudo chmod 777 spark.txt
echo $SPARK_HOME > spark.txt
remove=`awk 'FNR ==1 {print $1}' /usr/local/spark.txt`
#echo $remove
sudo rm -rf $remove
sudo rm -rf spark.txt

sudo touch hive.txt
sudo chmod 777 hive.txt
echo $HIVE_HOME > hive.txt
remove=`awk 'FNR ==1 {print $1}' /usr/local/hive.txt`
#echo $remove
sudo rm -rf $remove
sudo rm -rf hive.txt




