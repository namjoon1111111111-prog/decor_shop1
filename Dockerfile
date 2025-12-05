FROM tomcat:10.1-jdk17-temurin

# Copy WAR vào thư mục Tomcat
COPY WebApplication2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
