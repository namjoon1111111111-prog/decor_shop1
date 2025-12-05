# Dùng image chính thức, Render free tier kéo được 100%
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy file WAR của bạn (đang làm thử)
COPY WebApplication2.war app.war

EXPOSE 8080

# Render yêu cầu dùng cổng $PORT
ENV PORT 8080

ENTRYPOINT ["java", "-jar", "app.war"]
