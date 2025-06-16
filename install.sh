#!/bin/bash

echo " Creating docker-compose.yml..."
cat <<EOF > docker-compose.yml
version: '3'
services:
  elasticsearch:
    image: docker.elastic.co/elasticsearch/elasticsearch:8.12.2
    container_name: elasticsearch
    environment:
      - discovery.type=single-node
      - xpack.security.enabled=false
      - ES_JAVA_OPTS=-Xms256m -Xmx256m
    ports:
      - "9200:9200"
    restart: always

  kibana:
    image: docker.elastic.co/kibana/kibana:8.12.2
    container_name: kibana
    environment:
      - ELASTICSEARCH_HOSTS=http://elasticsearch:9200
      - NODE_OPTIONS=--max-old-space-size=256
    ports:
      - "5601:5601"
    depends_on:
      - elasticsearch
    restart: always
EOF

echo "Starting containers"
docker-compose up -d

# Start Spring Boot backend
echo "Starting Spring Boot Backend"
# Make sure backend-app.jar is in the same folder
nohup java -jar backend-app.jar > backend.log 2>&1 &

echo "Elasticsearch: http://<>:9200"
echo "Kibana:        http://<>:5601"
echo "Backend started in background, logs in backend.log"


Make Executable:
chmod +x install.sh


Just Run:
./install.sh

