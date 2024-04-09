# Set up instructions

## Docker container

We are using Neo4j inside a Docker container.
To run it, simply execute the script `./neo4j_server/start_container.sh <BASE_DIR>`, where `BASE_DIR` is the full path to the parent directory of the folder there this file is located.

The expected result is a container up (check it with `docker ps`) and a log of the container in the terminal, like the example below:

```
...
2024-04-09 00:53:18.613+0000 INFO  name: system
2024-04-09 00:53:18.613+0000 INFO  creationDate: 2024-04-09T00:53:15.669Z
2024-04-09 00:53:18.614+0000 INFO  Started.
```

This indicates that Neo4j is already running and its interface can be accessed through localhost:7474.

We are not using any username nor password (hence the flag `NEO4J_AUTH=none`).

# Tests

## An Author cannot review its own paper

```cypher
MATCH (a:Author)-[:Wrote]->(p:Paper)
WITH a, p
MATCH (a)-[:Reviewed]->(p)
RETURN *;
```

Expected result: empty.
