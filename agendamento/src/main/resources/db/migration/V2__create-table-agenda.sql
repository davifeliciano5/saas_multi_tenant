CREATE TABLE agenda (
 id VARCHAR(36) PRIMARY KEY,
 tenant_id VARCHAR(36) NOT NULL,
 user_id VARCHAR(36) NOT NULL,

 titulo VARCHAR(100) NOT NULL,
 data TIMESTAMP NOT NULL,

 FOREIGN KEY (user_id) REFERENCES users(id),
 UNIQUE (tenant_id, titulo)
);