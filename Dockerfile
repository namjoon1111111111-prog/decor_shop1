FROM openjdk:17-jdk-slim
WORKDIR /app

# Dùng file WAR hiện tại của bạn (đang làm thử)
COPY WebApplication2.war app.war

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.war"]
