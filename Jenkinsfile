pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                //you have to install the required dependencies to run the test aka maven and misschien gradle.
                //cause I dont want to install maven in the docker container, it is to much hassle i try a workaround.
                  
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}