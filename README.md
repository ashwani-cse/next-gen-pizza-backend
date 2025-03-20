# next-gen-pizza-backend
# 🍕 Next-Gen Pizza Backend

A cloud-native, microservices-based backend for a **smart pizza ordering system**, built with **Spring Boot, Kafka, Docker, and Kubernetes**.

---

## 📌 Features
✅ **Microservices Architecture** – Independent services for cart, orders, payments, store management, notifications, authentication, and API gateway.  
✅ **Event-Driven System** – Uses Kafka for real-time event streaming.  
✅ **Scalable & Resilient** – Runs on Kubernetes with auto-scaling and fault tolerance.  
✅ **Secure** – JWT-based authentication with OAuth2 support.  
✅ **Cloud-Ready** – Deployable on AWS/GCP using Terraform & Kubernetes.

---

## 🛠️ Tech Stack

| Tech            | Purpose |
|----------------|---------|
| **Java 17**    | Backend Development (Spring Boot) |
| **Spring Boot** | Microservices framework |
| **Kafka**      | Event-driven messaging |
| **Docker**     | Containerization |
| **Kubernetes** | Orchestration |
| **Terraform**  | Infrastructure as Code (IaC) |
| **PostgreSQL** | Database |
| **Redis**      | Caching |
| **JWT & OAuth2** | Authentication |
| **Maven**      | Build tool |

---

## 📂 Project Structure
```
next-gen-pizza-backend/  📂 (Root Repository)
│── services/            📂 (All backend microservices)
│   ├── cart-service/  
│   │   ├── src/  
│   │   ├── config/      📂 (Externalized configs: application.yml, env vars)
│   │   ├── test/        📂 (Unit & integration tests)
│   │   ├── Dockerfile  
│   │   ├── pom.xml  
│   │   └── README.md  
│   ├── order-service/  
│   ├── payment-service/  
│   ├── store-service/  
│   ├── notification-service/  
│   ├── gateway-service/  
│   ├── auth-service/  
│── libs/                📂 (Shared Libraries & Utils)
│   ├── common-dtos/     📂 (DTOs for API request/response)
│   ├── event-models/    📂 (Kafka event payloads)
│   ├── security-utils/  📂 (JWT, OAuth2 utilities)
│   ├── kafka-config/    📂 (Centralized Kafka producer/consumer configs)
│── infra/               📂 (Infrastructure & DevOps)
│   ├── terraform/       📂 (Infra as Code - GKE, VPC, DB, etc.)
│   ├── k8s-manifests/   📂 (Kubernetes YAMLs)
│   ├── local/           📂 (Local dev setup)
│   │   ├── docker-compose.yml  📄 (Local development environment)
│   │   ├── env.sample          📄 (Sample .env file)
│── scripts/             📂 (Automation & Deployment Scripts)
│   ├── build.sh  
│   ├── deploy.sh  
│   ├── test.sh  
│   ├── clean.sh         📄 (Removes unused containers, images, logs)
│── .github/             📂 (CI/CD Pipelines & GitHub Actions)
│   ├── workflows/  
│── Makefile             📄 (Helper commands for build, test & deploy)
│── .gitignore  
│── README.md   
```

---

## 🚀 Getting Started

### **1️⃣ Prerequisites**
Ensure you have the following installed:
- Java 17
- Maven
- Docker & Docker Compose
- Kubernetes CLI (kubectl)
- Terraform (for cloud deployments)

### **2️⃣ Clone the Repository**
```sh
git clone https://github.com/your-username/next-gen-pizza-backend.git
cd next-gen-pizza-backend
```

### **3️⃣ Build the Microservices**
```sh
make build
```

### **4️⃣ Run Locally using Docker Compose**
```sh
make docker-up
```

### **5️⃣ Run Tests**
```sh
make test
```

### **6️⃣ Deploy to Kubernetes**
```sh
make deploy-k8s
```

---

## 📜 API Documentation
Each microservice exposes RESTful APIs. Use **Postman** or **Swagger UI** for testing. Example:
```sh
GET http://localhost:8080/api/orders
```

- `gateway-service`: API Gateway for routing
- `cart-service`: Manages user carts
- `order-service`: Handles order placement
- `payment-service`: Processes payments
- `notification-service`: Sends order updates
- `store-service`: Manages store inventory
- `auth-service`: User authentication & authorization

---

## 🎯 Contribution Guidelines
1. **Fork the repo** and create a feature branch.
2. **Commit your changes** with proper messages.
3. **Create a pull request** and describe your changes.

---

## 🛡️ License
This project is licensed under the **MIT License**.

---

## 🙌 Acknowledgements
Special thanks to the **developer community** for inspiring this project!

---

**🚀 Happy Coding & Enjoy Your Pizza! 🍕**

