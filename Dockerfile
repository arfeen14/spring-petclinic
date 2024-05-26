FROM eclipse-temurin:latest
WORKDIR /spring-petclinic
COPY . .
RUN ./mvnw clean package -DskipTests
EXPOSE 9090
# Run the Spring Boot application
ENTRYPOINT ["java","-jar","./target/spring-petclinic-3.0.0-SNAPSHOT.jar", "--spring.profiles.active=postgres"]
