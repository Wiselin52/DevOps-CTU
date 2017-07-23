Steps for installing Jenkins
 
Java:
Install Java:  
>> sudo yum install java-1.8.0-openjdk
>> java -version

Install Apache Tomcat 9: 
>> sudo yum install wget http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz
>> chmod 755 apache-tomat-9.0.0.M21.tar.gz
>> tar xzf apache-tomat-9.0.0.M21.tar.gz
>> vi /home/kkavuri/tomcat9/conf/tomcat-users.xml
 
 <?xml version="1.0" encoding="UTF-8?>
<tomcat-users>
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<role rolename="admin-gui"/>
<role rolename="admin-script"/>
<user username="kkavuri" password="xxxxx" roles="manager-gui,manager-script,manager-jmx,manager-status,admin-gui,admin-script"/> 
</tomcat-users>
 

>> cd tomcat9 
>> ./bin/startup.sh
 
 
download Jenkins war file
>> cd
>> wget http://updates.jenkins-ci.org/download/war/2.7.3/jenkins.war

 
Deploy Jenkins war File  
copy the Jenkins.war file in ~/tomcat9/webapps folder
open your browser and access localhost:8080
click on the Manager App
Enter your username and password 
OR
For standalone:
>> Java –jar Jenkins.war –httpPort=9090
 
Get the password from : 
>> cat ~/Jenkins/Home/secrets/initialAdminPassword
 
Install Suggested Plugins
Follow the onscreen steps to install the suggested plugins
 
