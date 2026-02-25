CREATE TABLE users (
 id VARCHAR(36) PRIMARY KEY,
 tenant_id VARCHAR(36) NOT NULL,
 login VARCHAR(100) NOT NULL,
 password VARCHAR(255) NOT NULL,
 role VARCHAR(50) NOT NULL,

 UNIQUE (tenant_id, login)
);