[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/MO2ZMjEd)
# Docker Container CI/CD w/ Cloud IAM Permissions Assignment

## **Overview**
In this assignment, you will gain hands-on experience with Docker, Google Cloud Platform (GCP) and GitHub Actions by setting up a fully functional CI/CD pipeline to build, test and deploy Docker images to a [Google Cloud Artifact Registry](#artifact-registry). You will also configure Workload Identity Federation to securely authenticate your GitHub Actions workflows with GCP without needing long-lived service account keys. This approach is essential for modern cloud-based CI/CD pipelines, ensuring secure and scalable authentication.

## **Objectives**
- create a multi-stage Dockerfile to build a Docker image
- complete a docker compose file to run the fastAPI webserver
- complete a GitHub Actions workflow to build and push the Docker image to GCP Artifact Registry


## **Docs**
- [Artifact Registry & Workload Identity Federation for CI/CD](./docs/artifact-registry.md)
- [Docker and Docker Composer](./docs/docker.md)


## **Prerequisites**
- **GCP account**: You must have a valid Google Cloud Platform account with billing enabled.
- **Public GitHub repository**: Ensure you have a public GitHub repository, as GitHub Actions will need access to the workflow runners for this project.
- **Docker**: Docker installed locally to build and test your Docker image, and docker compose stack.

## **Rubric**

| Task                          | Points |
|--------------------------------|--------|
| Multi-stage Dockerfile         | 5 pts  |
| Complete Docker Compose file   | 5 pts  |
| Workload Identity Federation   | 5 pts  |
| **Total**                      | **15 pts** |

---

## Submission
Push all your code to the `main` branch of your Github repo, submit your GitHub project link to Canvas:


