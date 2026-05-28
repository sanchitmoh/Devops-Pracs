# CI/CD Workflow Management Diagram Explanation

This repository contains a concise explanation of the CI/CD (Continuous Integration & Continuous Delivery) workflow shown in the project diagram.

![CI/CD Workflow Diagram](images/ci-cd-workflow.png)

> If the image above is not visible, place the diagram image at `images/ci-cd-workflow.png` in the repository.

---

## Overview

This diagram explains how CI/CD works in software development. It is divided into two main parts:

1. Continuous Integration (CI) — Build Pipeline
2. Continuous Delivery (CD) — Release Pipeline

---

## 1. Developers

Developers write code for new features, bug fixes, and improvements. They work on branches locally, then push to the remote repository.

Example:

```bash
git checkout -b feature-login
```

---

## 2. Version Control (Combining Branch)

Version control platforms (GitHub, GitLab, Bitbucket) are used to merge developer branches via Pull Requests. This step triggers the CI pipeline.

Example:

```bash
git merge feature-login
```

---

## 3. Compile

Source code is compiled or transpiled into build artifacts. This step detects syntax and compilation errors early.

Examples:

```bash
mvn compile
```
or
```bash
npm run build
```

---

## 4. Build / Package Creation

Create deployable artifacts such as JARs, WARs, Docker images, APKs, or production bundles.

Example:

```bash
docker build -t myapp .
```

---

## 5. Auto Unit Testing

Automated unit tests run to validate individual units of code and business logic.

Example:

```bash
mvn test
```

---

## 6. Auto UI Testing

Frontend/UI tests validate user flows, form behavior, and UI interactions using tools such as Selenium, Cypress, or Playwright.

Example:

```bash
npm run cypress
```

---

## 7. Package with Instructions

Package includes configuration, deployment scripts, and infrastructure manifests (Docker Compose, Helm charts, Kubernetes YAML).

Purpose: make deployment repeatable and automated.

---

## Continuous Integration (CI)

Everything above belongs to CI. Goals include integrating code frequently, catching bugs early, and automating builds and tests.

Popular CI tools: Jenkins, GitHub Actions, GitLab CI/CD, CircleCI.

---

## 8. Release Pipeline Starts

The built package moves to QA, staging, or pre-production for further validation.

---

## 9. Testing in Release Pipeline

Advanced testing occurs here: integration, performance, security, load, and UAT.

---

## 10. Deployment

Applications are deployed to staging or production using Docker, Kubernetes, or cloud provider tools.

Example:

```bash
kubectl apply -f deployment.yaml
```

---

## 11. Public / General Availability

Final users can access the application — website, mobile app, or public APIs.

---

## Continuous Delivery (CD)

Everything from the release pipeline to deployment is considered CD. Goals: faster, reliable, and automated delivery with minimal manual steps.

---

## Full Flow Summary

```
Developer Writes Code
        ↓
Push to Git Repository
        ↓
Code Merge / Pull Request
        ↓
Compile & Build
        ↓
Unit Testing
        ↓
UI Testing
        ↓
Package Application
        ↓
Release Pipeline
        ↓
Advanced Testing
        ↓
Deployment
        ↓
Production/Public Access
```

---

## Difference Between CI and CD

| CI                     | CD                       |
| ---------------------- | ------------------------ |
| Continuous Integration | Continuous Delivery      |
| Focus on Build & Test  | Focus on Deployment      |
| Detect bugs early      | Deliver software quickly |
| Developers use it      | DevOps teams use it      |
| Code integration       | Release automation       |

---

## Real Industry Example

Update a React + Spring Boot project:

1. Write code
2. Push to GitHub
3. GitHub Actions starts automatically
4. Backend compiles
5. React builds
6. Tests run
7. Docker image created
8. Deploy to AWS/Kubernetes
9. Website updated automatically

---

## Important Interview Points

Why CI/CD?

- Faster development
- Fewer bugs
- Automatic deployment
- Better collaboration
- Stable releases

---

## Common CI/CD Tools

| Category        | Tools                   |
| --------------- | ----------------------- |
| Version Control | GitHub, GitLab          |
| Build Tools     | Maven, Gradle           |
| CI/CD           | Jenkins, GitHub Actions |
| Testing         | JUnit, Selenium         |
| Containers      | Docker                  |
| Orchestration   | Kubernetes              |
| Cloud           | AWS, Azure, GCP         |

---

## One-line Definitions

CI — Automatically build and test code whenever developers push changes.

CD — Automatically deliver/deploy tested applications to servers or production.

---

## Image

Place the diagram image at `images/ci-cd-workflow.png` to display it above.

---

If you want, I can add the image file into the repository for you — upload the diagram and I'll commit it into images/ci-cd-workflow.png.




docker build -t devops-pracs 
docker run --rm devops-pracs