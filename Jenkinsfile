pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = '192.168.122.10:5000'
	PROJECT_VERSION = readFile('projectInfo').replaceAll('version=', '').trim()
        DOCKER_IMAGE = "${DOCKER_REGISTRY}/mypython:${PROJECT_VERSION}"
    }
	stages {
		stage('Input Stage') {
		    steps {
			script {
			    def userChoice = input(
				id: 'userInput',
				message: 'Please select an option:',
                                parameters: [
                                	[$class: 'ExtensibleChoiceParameterDefinition',
                             		name: 'CHOICE',
                             		description: 'Select an option',
                             		visibleItemCount: 3,
                             		type: 'PT_SINGLE_SELECT',
                             		value: 'Option 1\nOption 2\nOption 3'
                           		 ]
                        	]
			    )

			    echo "User selected: ${userChoice}"
			}
		    }
		}
		
		stage('Next Stage') {
		    steps {
			echo "This is the next stage"
			// Add your actual pipeline steps here
		    }
		}
	    }


}
