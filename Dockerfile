FROM eclipse-temurin:17-jdk-focal
COPY .mvn/ ./mvn
COPY  pom.xml ./
#RUN mvnw dependency:go-offline
#RUN mvn clean install

COPY src ./src
ENTRYPOINT ["./mvnw","clean","install"]
CMD ["./mvnw", "spring-boot:run"]