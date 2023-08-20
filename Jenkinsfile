pipeline {
    agent { docker image { 'python:3.9-slim' } }
    stages {
        stage('simplecommand') {
            steps {
                sh '''
                python3 --version
                '''
            }
        }
    }
}
