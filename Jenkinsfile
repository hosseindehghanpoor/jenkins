pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                echo "Hello World"
                echo "here we are going to create Dockerfile"
                docker build -t test:v2 .
                '''
            }
        }
    }
}
