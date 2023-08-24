pipeline {
    agent any

    stages {
        
        stage('Build') {
            agent {
                docker {
                    image '192.168.122.10:5000/node:custom-alpine'
                    args '-v $PWD:/app -v node_modules_cache:/app/node_modules'
                }
            }
            steps {
                script {
                    // Install project dependencies
                    sh 'pnpm install'
                }
            }
        }

        stage('Build and Push Docker Image') {
            agent any
            steps {
                script {
                    sh "ls"
                    // // Build Docker image
                    // def dockerImage = docker.build("my-docker-image:${env.BUILD_NUMBER}")

                    // // Tag the image for the registry
                    // dockerImage.tag("192.168.122.10:5000/my-docker-image:${env.BUILD_NUMBER}")

                    // // Push the image to the registry
                    // docker.withRegistry('http://192.168.122.10:5000') {
                    //     dockerImage.push()
                    }
                }
            }
        }
    }
