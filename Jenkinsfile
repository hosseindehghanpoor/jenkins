pipeline {
    agent any

    stages {
        stage('Input Stage') {
            steps {
                script {
                    def userInput = input(
                        id: 'userInput',
                        message: 'Please provide the following information:',
                        parameters: [
                            string(defaultValue: 'this is default value', description: 'Enter a string:', name: 'USER_STRING'),
                            string(defaultValue: '', description: 'Enter a number:', name: 'USER_NUMBER')
                        ]
                    )

                    def userString = userInput['USER_STRING']
                    def userNumber = userInput['USER_NUMBER']

                    echo "User provided string: ${userString}"
                    echo "User provided number: ${userNumber}"
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
