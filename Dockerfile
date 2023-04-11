FROM ubuntu:18.04
	RUN apt-get update && apt-get install default-jre -y
	ADD apache-tomcat-9.0.73.tar.gz /data/tomcat
	COPY WebApp.war /data/tomcat/apache-tomcat-9.0.73/webapps
	EXPOSE 8080
	CMD /data/tomcat/apache-tomcat-9.0.73/bin/catalina.sh run
