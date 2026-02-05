CREATE (u1:User {id: "user_001"});
CREATE (u2:User {id: "user_002"});

CREATE (e1:Event {
  id: randomUUID(),
  text: "Primeiro evento registrado",
  ts_br: "01/02/2026 10:00:00",
  ts: datetime()
});

CREATE (e2:Event {
  id: randomUUID(),
  text: "Segundo evento registrado",
  ts_br: "01/02/2026 10:05:00",
  ts: datetime()
});

CREATE (u1)-[:SENT]->(e1);
CREATE (u2)-[:SENT]->(e2);
