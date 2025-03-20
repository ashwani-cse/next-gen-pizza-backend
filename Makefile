# Project Variables
ROOT_DIR := $(shell pwd)
SERVICES := cart-service order-service payment-service store-service notification-service gateway-service auth-service
DOCKER_IMAGE_PREFIX = ashwani/next-gen-pizza
DOCKER_COMPOSE_FILE = infra/local/docker-compose.yml

# ==============================
#  Build & Clean Targets
# ==============================

# Build all microservices
build:
	@echo "Building all services..."
	@for service in $(SERVICES); do \
		(cd services/$$service && mvn clean package -DskipTests); \
	done

# Clean all services
clean:
	@echo "Cleaning all services..."
	@for service in $(SERVICES); do \
		(cd services/$$service && mvn clean); \
	done
	rm -rf target/

# Rebuild everything
rebuild: clean build

# ==============================
#  Docker & Kubernetes Targets
# ==============================

# Build all Docker images
docker-build:
	@echo "Building Docker images..."
	@for service in $(SERVICES); do \
		(cd services/$$service && docker build -t $(DOCKER_IMAGE_PREFIX)-$$service .); \
	done

# Run services using Docker Compose
docker-up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

# Stop Docker Compose
docker-down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

# Push all Docker images to a registry (optional)
docker-push:
	@echo "Pushing Docker images..."
	@for service in $(SERVICES); do \
		docker push $(DOCKER_IMAGE_PREFIX)-$$service; \
	done

# Deploy to Kubernetes
deploy-k8s:
	kubectl apply -f infra/k8s-manifests/

# ==============================
#  Testing & Linting
# ==============================

# Run unit tests for all services
test:
	@echo "Running unit tests..."
	@for service in $(SERVICES); do \
		(cd services/$$service && mvn test); \
	done

# Run static analysis
lint:
	mvn checkstyle:check

# ==============================
#  Infrastructure & CI/CD
# ==============================

# Terraform apply
infra-apply:
	cd infra/terraform && terraform apply -auto-approve

# Terraform destroy
infra-destroy:
	cd infra/terraform && terraform destroy -auto-approve

# Run all scripts
run-scripts:
	@echo "Running deployment scripts..."
	bash scripts/build.sh && bash scripts/deploy.sh && bash scripts/test.sh

# Default Target
all: build
