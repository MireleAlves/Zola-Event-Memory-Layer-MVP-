// ===========================
// Querie par consultas para análise e validação do grafo
//===========================

//Ver todos os eventos por usuário
MATCH (u:User)-[:SENT]->(e:Event)
RETURN u.id AS user, e.text AS event, e.ts_br AS timestamp
ORDER BY e.ts DESC;

// Contar eventos por usuário
MATCH (u:User)-[:SENT]->(e:Event)
RETURN u.id AS user, count(e) AS totalEvents
ORDER BY totalEvents DESC;

// Recuperar histórico recente de um usuário
MATCH (u:User {id: "user_001"})-[:SENT]->(e:Event)
RETURN e.text, e.ts_br
ORDER BY e.ts DESC
LIMIT 10;

// Visualizar o grafo (Neo4j Browser / Bloom)
MATCH (u:User)-[:SENT]->(e:Event)
RETURN u, e
LIMIT 50;

