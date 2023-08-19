pipeline {
    agent {
        docker {
            // Use the Python image as the build environment
            image 'python:3.11.4'
            args '-u'  // unbuffered output
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'python --version'
            }
        }
    }
}
