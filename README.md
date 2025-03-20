# Next-Gen Pizza Backend

## Overview
The **Next-Gen Pizza Backend** is a scalable microservices-based backend architecture designed to power modern pizza delivery applications. It provides core functionalities like cart management, order processing, payments, store management, authentication, notifications, and API gateway services.

## Features
- 🍕 **Cart Service** – Manage user carts and items.
- 📦 **Order Service** – Process orders and track order statuses.
- 💳 **Payment Service** – Handle secure transactions.
- 🏬 **Store Service** – Manage store locations and menus.
- 🔔 **Notification Service** – Send email, SMS, and push notifications.
- 🔑 **Auth Service** – User authentication and authorization.
- 🚪 **Gateway Service** – API Gateway for routing requests.
- 📡 **Kafka Event Streaming** – Event-driven architecture.
- 🏗 **Kubernetes Deployment** – Scalable cloud-native setup.

## Tech Stack
- **Backend:** Java (Spring Boot, Spring Security, Spring Cloud)
- **Message Queue:** Apache Kafka
- **API Gateway:** Spring Cloud Gateway
- **Database:** PostgreSQL / MongoDB
- **Infrastructure:** Kubernetes (GKE), Terraform, Docker, Jenkins
- **Authentication:** OAuth2, JWT
- **Monitoring:** Prometheus, Grafana

## Repository Structure
```
next-gen-pizza-backend/
│── services/            📂 (All backend microservices)
│   ├── cart-service/  
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
│   ├── kafka-config/    📂 (Centralized Kafka configs)
│── infra/               📂 (Infrastructure & DevOps)
│   ├── terraform/       📂 (Infra as Code - GKE, VPC, DB, etc.)
│   ├── k8s-manifests/   📂 (Kubernetes YAMLs)
│   ├── local/           📂 (Local dev setup)
│── scripts/             📂 (Automation & Deployment Scripts)
│── .github/             📂 (CI/CD Pipelines & GitHub Actions)
│── Makefile             📄 (Helper commands for build, test & deploy)
│── .gitignore  
│── README.md  
```

## Setup & Installation
### **1. Clone Repository**
```sh
git clone https://github.com/your-repo/next-gen-pizza-backend.git
cd next-gen-pizza-backend
```

### **2. Configure Environment**
```sh
cp infra/local/env.sample .env
```

### **3. Start Services**
#### **Using Docker Compose (Local Development)**
```sh
docker-compose up -d
```

#### **Using Maven (For Individual Services)**
```sh
cd services/cart-service
mvn spring-boot:run
```

### **4. Running Tests**
```sh
mvn test
```

## Deployment
### **To Kubernetes (GKE)**
```sh
kubectl apply -f infra/k8s-manifests/
```

### **Terraform Deployment**
```sh
cd infra/terraform
terraform init
terraform apply
```

## API Documentation
The API is documented using OpenAPI (Swagger):
- **Local:** `http://localhost:8080/swagger-ui.html`
- **Staging:** `https://staging.yourdomain.com/swagger-ui.html`
- **Production:** `https://api.yourdomain.com/swagger-ui.html`

## Project Management
We are tracking sprint-wise tasks in a GitHub Project. Check out the latest progress here:  
➡️ [Next-Gen Pizza Backend - Sprint Tasks](https://github.com/users/ashwani-cse/projects/3/views/1)

## Documentation & Wiki
For detailed documentation, check out the project wiki:  
📖 [Next-Gen Pizza Backend - GitHub Wiki](https://github.com/ashwani-cse/next-gen-pizza-backend/wiki)

## Contribution Guidelines
1. Fork the repository & create a new branch.
2. Make your changes and run tests.
3. Submit a Pull Request (PR).
4. Ensure code reviews and approvals before merging.

## Stay Connected
Connect with us on social media and stay updated with the latest news and developments:

- [LinkedIn](https://www.linkedin.com/in/ashwanicse/)
- [Leetcode](https://leetcode.com/ashwani__kumar/)
- [Need Help? Schedule A Call](https://topmate.io/ashwanikumar)

## Subscribe to our Newsletter
Stay ahead of the curve by subscribing to our LinkedIn newsletter:
- [Subscribe Now](https://www.linkedin.com/newsletters/7084124970443767808/)

## License
This project is licensed under the **MIT License**.

---
🚀 **Built with ❤️ by Next-Gen Pizza Team**
