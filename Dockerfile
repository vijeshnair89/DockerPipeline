FROM tomcat:9
COPY target/java-example.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8090
CMD ["catalina.sh", "run"]
