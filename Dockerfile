# Sử dụng image JRE nhẹ (chỉ chạy, không build)
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Copy file .jar đã được IntelliJ hoặc Maven build sẵn từ thư mục target/
# Lưu ý: Bạn cần chạy 'mvn package' hoặc Build trong IntelliJ trước khi build docker
COPY target/*.jar app.jar
    
EXPOSE 8080

# Lệnh chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]