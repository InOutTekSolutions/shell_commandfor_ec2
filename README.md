# Elasticsearch and Kibana Setup with Docker

This repository provides a streamlined setup for deploying **Elasticsearch** and **Kibana** using Docker, along with a Spring Boot backend application. The included `install.sh` script automates the installation of Docker, Docker Compose, and the configuration of an Elasticsearch-Kibana stack.

## Purpose

The purpose of this setup is to:
- Provide a quick and reproducible way to deploy a single-node Elasticsearch cluster and Kibana for data indexing, search, and visualization.
- Support development or testing environments for applications that rely on Elasticsearch for search and analytics.
- Integrate a Spring Boot backend application that interacts with Elasticsearch.

This setup is ideal for:
- Developers building search or analytics-driven applications.
- Teams setting up a local or testing environment for Elasticsearch and Kibana.
- Projects requiring a lightweight, single-node Elasticsearch setup with minimal configuration.

## Prerequisites

- **Operating System**: Ubuntu (or a Debian-based Linux distribution).
- **Hardware**: At least 8GB of RAM (due to Elasticsearch's memory requirements).
- **Internet Connection**: Required to download Docker, Docker Compose, and container images.
- **Root/Superuser Access**: Required for installing packages and modifying system permissions.
- **backend-app.jar**: The Spring Boot backend application (must be placed in the `~/elastic-setup` directory).





