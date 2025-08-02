
````markdown
# 🚀 CI/CD Pipeline for Static Website using Jenkins and Docker

This guide documents how I set up a CI/CD pipeline that:

- Runs Jenkins inside Docker
- Watches a GitHub repository
- Builds a Docker image of a static HTML site
- Deploys it to a container on port `9091` automatically on every Git push

---

## 🧱 Step-by-Step Setup

### 1. 📁 GitHub Repository

Repo: [`https://github.com/narencloudev/portfolio`](https://github.com/narencloudev/portfolio)

- Contains:
  - `index.html`
  - `Dockerfile` (for the static website)
  - `Jenkinsfile` (CI/CD instructions)

---

### 2. 🐳 Run Jenkins in Docker (Initial Attempt)

```bash
docker run -d \
  --name jenkins \
  -p 9090:8080 -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins:lts
````

❌ **Issue**: Jenkins didn’t have Docker CLI installed, so it couldn’t run `docker build`.

---

### 3. 🛠️ Create a Custom Jenkins Image with Docker CLI

Create a file named `Dockerfile`:

```Dockerfile
FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y docker.io

RUN usermod -aG docker jenkins

USER jenkins
```

Then build the image:

```bash
docker build -t jenkins-docker .
```

> ✅ Now Jenkins has Docker CLI installed and can access the host’s Docker daemon.

---

### 4. 🔁 Restart Jenkins Using the Custom Image

```bash
docker stop jenkins && docker rm jenkins

docker run -d \
  --name jenkins \
  -p 9090:8080 -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins-docker
```

---

### 5. ⚙️ Create a Jenkins Pipeline Job

* Open [http://localhost:9090](http://localhost:9090)
* Create a new job named `Static_website`
* Choose **Pipeline**
* Configure it to pull from: `https://github.com/narencloudev/portfolio.git`
* Jenkinsfile is in the root of the repo

---

### 6. 🧾 Jenkinsfile Contents

```groovy
pipeline {
  agent any

  environment {
    IMAGE_NAME = "narencloudev/static-site"
    CONTAINER_NAME = "static-html"
    HOST_PORT = "9091"
  }

  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/narencloudev/portfolio.git'
      }
    }

    stage('Build Image') {
      steps {
        sh "docker build -t ${IMAGE_NAME}:latest ."
      }
    }

    stage('Stop Previous Container') {
      steps {
        sh """
          docker stop ${CONTAINER_NAME} || true
          docker rm ${CONTAINER_NAME} || true
        """
      }
    }

    stage('Run New Container') {
      steps {
        sh """
          docker run -d \
            --name ${CONTAINER_NAME} \
            -p ${HOST_PORT}:80 \
            ${IMAGE_NAME}:latest
        """
      }
    }
  }

  post {
    success {
      echo "Deployed at: http://localhost:${env.HOST_PORT}"
    }
    failure {
      echo "Deployment failed!"
    }
  }
}
```

---

### 7. 🕒 Enable Auto-Trigger on Git Push

Use SCM Polling:

* Go to Job > Configure > Build Triggers
* Check **"Poll SCM"**
* Use schedule:

  ```
  H/1 * * * *
  ```

✅ Jenkins will poll GitHub every minute for changes.

> ✅ **You don’t need to manually trigger builds anymore.**

---

## 🐞 Problems Faced and Solutions

| ❌ Problem                                 | 💡 Solution                                                          |
| ----------------------------------------- | -------------------------------------------------------------------- |
| Jenkins didn't have Docker CLI            | Built a custom image with Docker installed                           |
| Permission denied to Docker socket        | Mounted `/var/run/docker.sock` and added `jenkins` to `docker` group |
| `docker` not found inside container       | Used custom Jenkins image `jenkins-docker`                           |
| Git checkout failed (wrong branch)        | Fixed branch name in Jenkins or repo                                 |
| Container name conflict                   | Removed old container before starting new                            |
| `http://localhost:9091` not working       | Ensured correct port mapping and health of the container             |
| Dockerfile error (`group already exists`) | Removed `groupadd`, just used `usermod -aG docker jenkins`           |

---

## ✅ Final Working Summary

* Jenkins on: [http://localhost:9090](http://localhost:9090)
* Static website deployed to: [http://localhost:9091](http://localhost:9091)
* Fully automated: Any GitHub commit triggers a new build + redeployment
* No manual steps needed after setup

---

## 🔁 Useful Docker Commands

```bash
# Build Jenkins image
docker build -t jenkins-docker .

# Start Jenkins with volume and Docker access
docker run -d \
  --name jenkins \
  -p 9090:8080 -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins-docker

# View logs
docker logs -f jenkins

# See running containers
docker ps
```

---

## 🎯 Future Enhancements

* Push images to Docker Hub
* Use NGINX reverse proxy
* SSL with Let's Encrypt
* Add automated tests before build

```

Let me know if you want this saved as a downloadable file too.
```
