# EQUA: Wher money makes sense

AI-Powered Bank Reconciliation Platform.

EQUA aims to simplify financial reconciliation
using intelligent transaction matching,
discrepancy detection, and AI-powered insights.

## Project Status
Development in progress.

## Development Setup

EQUA is organized as a Java 21 / Spring Boot API and a React + TypeScript + Vite frontend. PostgreSQL is the persistent database and Flyway manages schema changes. The initial scaffold keeps CSV import and normalization, deterministic reconciliation, audit history, PayPal REST integration, and advisory AI in separate backend packages. Business workflows will be added in later phases.

### Prerequisites

- Java 21
- Node.js 20.19+ or 22.12+
- Docker Desktop (for local PostgreSQL)

### Start locally

1. Copy `.env.example` to `.env` and adjust local settings if needed. Never put real credentials in source control.
2. Start PostgreSQL with `docker compose up -d`.
3. Start the backend from the repository root with `& .\mvnw.cmd spring-boot:run` in PowerShell (the Maven wrapper downloads Maven on first use).
4. In another terminal, run `npm install` and `npm run dev` from `frontend`.
5. Check `http://localhost:8080/api/health` or `http://localhost:8080/actuator/health`.

### Verification

- Backend: `& .\mvnw.cmd test` from the repository root
- Frontend: `npm run build` from `frontend`

Development CSV examples are in `samples/bank-statements` and `samples/paypal-exports`. PayPal configuration defaults to REST Sandbox at `https://api-m.sandbox.paypal.com`; set `PAYPAL_CLIENT_ID` and `PAYPAL_CLIENT_SECRET` locally when implementing the integration.
