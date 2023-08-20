pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = '192.168.122.10:5000'
	PROJECT_VERSION = readFile('projectInfo').replaceAll('version=', '').trim()
	PROJECT_VERSION_NEW =  readFile('projectInfo').readLines().find { it.startsWith('version=') }
        DOCKER_IMAGE = "${DOCKER_REGISTRY}/mypython:v4"
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
		echo "Version is: ${PROJECT_VERSION}"
		echo "New Version is: ${PROJECT_VERSION_NEW}"
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
