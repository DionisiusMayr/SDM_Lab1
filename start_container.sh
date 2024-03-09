docker stop NEO4J
docker rm NEO4J

docker run \
    --name NEO4J \
    -p 7474:7474 \
    -p 7687:7687 \
    --env=NEO4J_AUTH=none \
    -v ~/bdma/upc/semantic_data_management/SDM_Lab1/neo4j/import:/var/lib/neo4j/import \
    -v ~/bdma/upc/semantic_data_management/SDM_Lab1/neo4j/logs:/var/lib/neo4j/logs \
    -v ~/bdma/upc/semantic_data_management/SDM_Lab1/neo4j/conf:/var/lib/neo4j/conf \
    neo4j:5.17.0-community-bullseye
