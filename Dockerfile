FROM itzg/minecraft-bedrock-server:latest
ENV EULA=TRUE
ENV VERSION=1.21.3
EXPOSE 19132/udp
CMD ["bedrock_server"]
