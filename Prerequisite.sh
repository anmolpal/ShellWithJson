#bin/bash
#sudo touch Preq.txt
#sudo chmod 777 Preq.txt
cd /usr/local/
sudo mkdir txt
sudo chmod 777 txt
cd /usr/local/txt
sudo touch python.txt
sudo chmod 777 python.txt
python3 --version > /usr/local/txt/python.txt
python=`awk 'FNR ==1 {print $1}' /usr/local/txt/python.txt`
if [[ $python == *Python* ]]
then
    echo "==================================================================="
    echo "Python is already Installed in your System. Below is the Version"
    python3 --version
    sudo rm python.txt
    echo "==================================================================="
else
    echo "*******************************************************************"
    echo "Python.exe is required"
    sudo rm python.txt
    echo "*******************************************************************"
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch java.txt
sudo chmod 777 java.txt
sudo apt list --installed | grep -i openjdk > /usr/local/txt/java.txt
java=`awk 'FNR ==1 {print $1}' /usr/local/txt/java.txt`
#echo $java
if [[ $java == *openjdk-8-jdk* ]]
then
    echo "==================================================================="
    echo "Java is already Installed in your System. Below is the Version"
    java -version
    #sudo rm java.txt
    echo "==================================================================="
else
    echo "*******************************************************************"
    echo "Java 8 is required"
    #sudo rm java.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch hadoop.txt
sudo chmod 777 hadoop.txt
hadoop version > /usr/local/txt/hadoop.txt
hadoop=`awk 'FNR ==1 {print $1}' /usr/local/txt/hadoop.txt`
#echo $hadoop
if [[ $hadoop == *Hadoop* ]]
then
    echo " "
    echo "==================================================================="
    echo "Hadoop is already Installed in your System. Below is the Version"
    hadoop version
    #sudo rm hadoop.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "Hadoop is required"
    #sudo rm hadoop.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch typescript
sudo chmod 777 typescript
sudo touch pyspark.txt
sudo chmod 777 pyspark.txt
script -c "pyspark --version" > /usr/local/txt/pyspark.txt
pyspark=`awk 'FNR ==6 {print $5}' /usr/local/txt/pyspark.txt`
#echo $pyspark
if [[ $pyspark == *3* ]]
then
    echo " "
    echo "==================================================================="
    echo "Spark is already Installed in your System. Below is the Version"
    pyspark --version
    #sudo rm pyspark.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "Spark is required"
    #sudo rm pyspark.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch airflow.txt
sudo chmod 777 airflow.txt
airflow version > /usr/local/txt/airflow.txt
airflow=`awk 'FNR ==1 {print $1}' /usr/local/txt/airflow.txt`
if [[ $airflow == *2* ]]
then
    echo " "
    echo "==================================================================="
    echo "Airflow is already Installed in your System. Below is the Version"
    airflow version
    #sudo rm airflow.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "Airflow is not in your System."
    #sudo rm airflow.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch hive.txt
sudo chmod 777 hive.txt
script -c "hive --version" > /usr/local/txt/hive.txt
hive=`awk 'FNR ==7 {print $1}' /usr/local/txt/hive.txt`
if [[ $hive == *Hive* ]]
then
    echo " "
    echo "==================================================================="
    echo "Hive is already Installed in your System. Below is the Version"
    hive --version
    #sudo rm hive.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "Hive is not in your System."
    #sudo rm hive.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch mysql.txt
sudo chmod 777 mysql.txt
mysql --version >> /usr/local/txt/mysql.txt
mysql=`awk 'FNR ==1 {print $1}' /usr/local/txt/mysql.txt`
if [[ $mysql == *mysql* ]]
then
    echo " "
    echo "==================================================================="
    echo "MySQL is already Installed in your System. Below is the Version"
    mysql --version
    #sudo rm mysql.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "MySQL is not in your System."
    #sudo rm mysql.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch mssql.txt
sudo chmod 777 mssql.txt
dpkg -l | grep -i mssql-server > /usr/local/txt/mssql.txt
mssql=`awk 'FNR ==1 {print $2}' /usr/local/txt/mssql.txt`
if [[ $mssql == *mssql-server* ]]
then
    echo " "
    echo "==================================================================="
    echo "MS SQL Server is already Installed in your System. Below is the Version"
    dpkg -l | grep -i mssql-server
    #sudo rm mssql.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "MS SQL Server is not in your System."
    #sudo rm mssql.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch postgres.txt
sudo chmod 777 postgres.txt
psql -V > /usr/local/txt/postgres.txt
postgres=`awk 'FNR ==1 {print $1}' /usr/local/txt/postgres.txt`
if [[ $postgres == *psql* ]]
then
    echo " "
    echo "==================================================================="
    echo "Postgres is already Installed in your System. Below is the Version"
    psql -V
    #sudo rm postgres.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "Postgres is not in your System."
    #sudo rm postgres.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/

sudo chmod 777 txt
cd /usr/local/txt/
sudo touch mongo.txt
sudo chmod 777 mongo.txt
mongo --version > /usr/local/txt/mongo.txt
mongo=`awk 'FNR ==1 {print $1}' /usr/local/txt/mongo.txt`
if [[ $mongo == *Mongo* ]]
then
    echo " "
    echo "==================================================================="
    echo "MongoDB is already Installed in your System. Below is the Version"
    mongo --version
    #sudo rm mongo.txt
    echo "==================================================================="
else
    echo " "
    echo "*******************************************************************"
    echo "MongoDB is not in your System."
    #sudo rm mongo.txt
    echo "*******************************************************************"
    echo " "
fi

cd /usr/local/
spark1=`jq '.sparkVersion' info.json`
hadoop1=`jq '.hadoopVersion' info.json`
java1=`jq '.java' info.json`

cd /usr/local/txt/
sudo touch spark2
sudo chmod 777 spark2
sudo touch hadoop2
sudo chmod 777 hadoop2
sudo touch java2
sudo chmod 777 java2

echo $spark1 | sed "s/['\"]//g" > spark2
echo $hadoop1 | sed "s/['\"]//g" > hadoop2
echo $java1 | sed "s/['\"]//g" > java2

javasrc=`awk 'FNR ==1 {print $1}' /usr/local/txt/java.txt`
hadoopsrc=`awk 'FNR ==1 {print $2}' /usr/local/txt/hadoop.txt`
pysparksrc=`awk 'FNR ==6 {print $5}' /usr/local/txt/pyspark.txt`

if [[ $python == *Python* ]] && [[ $javasrc == *8* ]] && [[ $hadoopsrc == *3* ]] && [[ $pysparksrc == *3* ]] 
then
    echo "Requirements are met"
    echo "0"
else
    echo "Requirements are not met"
    echo "1"
fi
