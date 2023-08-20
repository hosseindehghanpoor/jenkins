pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = '192.168.122.10:5000'
        DOCKER_IMAGE = "${DOCKER_REGISTRY}/mypython:v2"
    }
    stages {
        stage('Pre-Built Message') {
            steps {
                sh '''
                echo "Hello World"
                echo "here we are going to create Dockerfile"
                docker build -t test:v2 .
                '''
            }
        }
	stage('Builing the image') {
	    steps {
	        sh '''
		docker build -t ${DOCKER_IMAGE} .
		echo "builing DONE"
 		'''
            }
	}
	stage('Pushing the image') {
	    steps {
		sh '''
		echo "Pushing"
		docker push ${DOCKER_IMAGE}
		'''
	    }
	}
    }
}
