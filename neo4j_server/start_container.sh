#!/usr/bin/env bash

set -u

docker stop NEO4J
docker rm NEO4J

BASE_DIR=${1}

docker run \
    --name NEO4J \
    -p 7474:7474 \
    -p 7687:7687 \
    --env=NEO4J_AUTH=none \
    -v ${BASE_DIR}/SDM_Lab1/neo4j/import:/var/lib/neo4j/import \
    -v ${BASE_DIR}/SDM_Lab1/neo4j/logs:/var/lib/neo4j/logs \
    -v ${BASE_DIR}/SDM_Lab1/neo4j/conf:/var/lib/neo4j/conf \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    -e NEO4J_PLUGINS=\[\"graph-data-science\"\] \
    neo4j:5.17.0-community-bullseye
