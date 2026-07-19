FROM eclipse-temurin:21-jdk-slim
WORKDIR /app
RUN apt-get update && apt-get install -y wget curl && rm -rf /var/lib/apt/lists/*
RUN wget -O paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.3/builds/1/downloads/paper-1.21.3-1.jar
RUN echo "eula=true" > eula.txt
COPY start.sh .
RUN chmod +x start.sh
VOLUME ["/app/world"]
EXPOSE 25565
CMD ["./start.sh"]
