# 🚀 SaaS Multi-Tenant Scheduling Platform (Spring Boot)

Plataforma SaaS multi-tenant desenvolvida com **Java + Spring Boot**, simulando um sistema real de agendamento onde múltiplas empresas utilizam a mesma aplicação com isolamento total de dados.

Projeto focado em **portfólio backend Java**, com arquitetura inspirada em sistemas SaaS reais.

---

## 🧠 Sobre o Projeto

Este projeto implementa um **SaaS de agendamento multiempresa**, onde cada negócio (tenant) possui:

- Usuários próprios
- Serviços e horários isolados
- Dados completamente separados

A aplicação demonstra conceitos avançados de backend como:

- Multi-tenancy
- Autenticação JWT
- Arquitetura modular
- Containerização

---

## 🏗️ Arquitetura

A aplicação segue uma arquitetura modular baseada em domínios:

```
com.seusaaas
 ├── auth
 ├── tenant
 ├── scheduling
 ├── billing
 └── shared
```

### Módulos

| Módulo | Responsabilidade |
|--------|-------------|
| auth | Autenticação, registro e JWT |
| tenant | Gestão de empresas (multi-tenancy) |
| scheduling | Núcleo de agendamentos |
| billing | Planos e limitações (simulado) |
| shared | Segurança, tenancy e configurações comuns |

---

## 🧩 Multi-Tenancy

O sistema implementa **isolamento por tenant_id**, estratégia amplamente utilizada em SaaS reais.

Cada entidade contém:

```
tenant_id (NOT NULL)
```

### Funcionamento
- O tenant é resolvido via JWT ou header
- Um TenantContext mantém o tenant da request
- Todas as queries respeitam o isolamento

Isso garante que:
> Dados de uma empresa nunca vazem para outra.

---

## 🔐 Segurança

Autenticação baseada em **Spring Security + JWT**.

O token contém:
- userId
- tenantId
- roles

Exemplo de payload:

```json
{
  "sub": "user123",
  "tenantId": "tenant_a",
  "role": "ADMIN"
}
```

---

## 📅 Funcionalidades

### ✅ Implementadas

- Registro e login com JWT
- Criação de empresas (tenants)
- Isolamento de dados multi-tenant
- CRUD de serviços
- Gestão de agenda
- Sistema de agendamentos
- Simulação de planos (Free / Pro)

---

## 💳 Planos (Simulados)

| Plano | Limitações |
|------|-----------|
| FREE | Limite mensal de agendamentos |
| PRO | Uso ilimitado |

Sem integração real com gateway de pagamento (foco arquitetural).

---

## 🛠️ Stack Tecnológica

### Backend
- Java 17+
- Spring Boot
- Spring Security
- Spring Data JPA
- Hibernate
- PostgreSQL

### Infraestrutura
- Docker
- Docker Compose
- Deploy em nuvem

### Extras
- Swagger / OpenAPI
- JUnit (testes)
- Logs estruturados

---

## 📘 Documentação da API

A API é documentada com **Swagger/OpenAPI**.

Após iniciar o projeto:
```
http://localhost:8080/swagger-ui.html
```

---

## 🐳 Docker

O projeto é totalmente containerizado.

### Subir com Docker Compose

```bash
docker-compose up --build
```

Serviços iniciados:
- API Spring Boot
- PostgreSQL

---

## ⚙️ Executando Localmente

### Pré-requisitos
- Java 17+
- Docker (opcional)
- Maven ou Gradle

### Rodando sem Docker

```bash
./mvnw spring-boot:run
```

Ou:

```bash
./gradlew bootRun
```

---

## 🌐 Deploy

A aplicação pode ser executada em qualquer provedor que suporte containers:

- Render
- Railway
- Fly.io
- AWS EC2
- VPS

Projeto desenvolvido com foco em deploy real.

---

## 🧪 Testes

Inclui testes focados em:

- Regras de negócio
- Isolamento multi-tenant
- Serviços críticos

Objetivo: garantir que tenants não compartilhem dados.

---

## 🎯 Objetivo do Projeto

Este projeto foi desenvolvido para:

- Demonstrar habilidades avançadas em backend Java
- Explorar arquitetura SaaS multi-tenant
- Servir como portfólio para vagas backend
- Simular cenários reais de produção

---

## 🧠 Aprendizados

Principais conceitos aplicados:

- Arquitetura SaaS
- Multi-tenancy na prática
- Spring Security avançado
- JWT com contexto de tenant
- Containerização com Docker
- Design orientado a domínio

---

## 📌 Possíveis Evoluções

- Integração com Stripe
- Subdomínios por tenant
- Cache com Redis
- Rate limiting
- Observabilidade (Prometheus/Grafana)
- CI/CD pipeline

---

## 👨‍💻 Autor

Desenvolvido por **Seu Nome**

- LinkedIn: https://linkedin.com/in/seu-link
- GitHub: https://github.com/seu-user

---

## ⭐ Considerações Finais

Este projeto foi construído com foco em **clareza arquitetural e aplicabilidade real**, priorizando:

- Código limpo
- Organização modular
- Conceitos usados no mercado

Mais do que um CRUD, este repositório demonstra a construção de um **SaaS realista utilizando Java e Spring Boot**.
