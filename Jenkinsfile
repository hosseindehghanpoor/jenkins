pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = '192.168.122.10:5000'
        DOCKER_IMAGE = "${DOCKER_REGISTRY}/mypython:v3"
    }
    stages {
        stage('Pre-Built Message') {
            steps {
		script {
                    def dockerImage = docker.build(DOCKER_IMAGE, '-f Dockerfile .')
                }
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
