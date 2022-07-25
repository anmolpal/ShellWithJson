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


#sudo touch bashline
#sudo chmod 777 bashline

#sudo touch abc
#sudo chmod 777 abc

#sudo touch txt
#sudo chmod 777 txt

#sudo touch tnt
#sudo chmod 777 tnt

#sudo touch ab
#sudo chmod 777 ab

#cd /usr/local/
#usar=`jq '.user' info.json`
#sudo touch usar1.txt
#sudo chmod 777 usar1.txt
#echo $usar | sed "s/['\"]//g" > usar1.txt
#usar1=`awk 'FNR ==1 {print $1}' /usr/local/usar1.txt`
#echo $usar1

cd /home/$usar1/

grep 'PATH' /home/$usar1/.bashrc | grep 'hadoop' >> bashline
grep 'PATH' /home/$usar1/.bashrc | grep 'spark' >> bashline
while read line
do
        IFS=':' #setting space as delimiter
        read -ra ADDR <<< "$line" #reading str as an array as tokens separated by IFS
        for i in "${ADDR[@]}"; #accessing each element of array
        do
                echo "$i"
        done >>abc
        # echo $line
done < bashline

x="hadoop"
sed  -i "/\<$x\>/ d"  /home/$usar1/abc
x="spark"
sed  -i "/\<$x\>/ d"  /home/$usar1/abc
uniq abc txt
#awk '!visited[$0]++' /home/$usar1/txt >> tnt

#(readarray -t ARRAY < txt; echo "${ARRAY[*]}") >> ab
sed 'N;s/\n/\:/' < txt > ab
#sudo rm -rf abc

while read line
do
echo "$line"  >> ~/.bashrc
done < ab

cd /usr/local/
sudo rm -rf tnt
sudo rm -rf ab
sudo rm -rf txt
sudo rm -rf bashline
sudo rm -rf abc
sudo rm -rf kbc
cd /home/$usar1/
sudo rm -rf tnt
sudo rm -rf ab
sudo rm -rf txt
sudo rm -rf bashline
sudo rm -rf abc

sed -i '/\<PATH\>/ { /\<hadoop\>/ d; }' /home/$usar1/.bashrc
sed -i '/\<PATH\>/ { /\<spark\>/ d; }' /home/$usar1/.bashrc


#sed -i '/PATH/d' /home/$usar1/.bashrc
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
sed -i '/mssql-tools/d' /home/$usar1/.bashrc
sed -i '/LD_localRARY_PATH/d' /home/$usar1/.bashrc
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
