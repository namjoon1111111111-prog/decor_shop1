# Image ổn định cho Render
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Giải nén WAR để chạy như thư mục web bình thường (khắc phục lỗi manifest)
COPY WebApplication2.war app.war
RUN mkdir webapp && unzip app.war -d webapp

# Render yêu cầu dùng cổng $PORT
ENV PORT 8080

EXPOSE 8080

# Chạy Tomcat embedded có trong WAR
ENTRYPOINT ["java", "-jar", "app.war"]
