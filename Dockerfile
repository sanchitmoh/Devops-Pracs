FROM eclipse-temurin:17-jdk as build

WORKDIR /app

# Copy only the Java source we need and compile
COPY Main.java /app/
RUN javac Main.java

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/Main.class /app/

# Run the Main class
CMD ["java", "Main"]
