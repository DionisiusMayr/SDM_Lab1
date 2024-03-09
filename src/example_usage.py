import neo4j

conn = neo4j.GraphDatabase.driver(
    uri="neo4j://localhost"
)

# Delete nodes and relationships
query = """
    MATCH (n)
    DETACH DELETE n;
"""

result = conn.session().run(query)

query = """
    LOAD CSV WITH HEADERS FROM 'file:///dblp_author.csv'
    AS row
    FIELDTERMINATOR ';'
    CREATE (p:Person {id: row[':ID'], name: row['author:string']})
    ;
"""

result = conn.session().run(query)

result = conn.session().run(
    "MATCH (n) RETURN (n) LIMIT 50"
)

for r in result:
    print(r.data())
